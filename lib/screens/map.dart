// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors, unused_field, prefer_final_fields, import_of_legacy_library_into_null_safe, unnecessary_import, library_prefixes, unused_import, implementation_imports, unused_local_variable, unnecessary_this, unnecessary_null_comparison, must_call_super, avoid_returning_null_for_void, nullable_type_in_catch_clause


import 'dart:async';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

//import 'package:flutter_osm_plugin/src/controller/map_controller.dart';

class map extends StatefulWidget {
  const map({Key? key}) : super(key: key);
  @override
  _map createState() => _map();
}

class _map extends State<map> {
  late StreamSubscription _lcationSubscription;
  Location _locationTracker = Location();
  late Marker marker;
  late Circle circle;
 MapController mapController ;

  static final CameraPosition initialLocation = CameraPosition(
    target: LatLng(32.219353, 35.243198),
    zoom: 14,
  );
  Future<Uint8List> getMarker() async {
    ByteData byteData =
        await DefaultAssetBundle.of(context).load("assets/photos/car.png");
    return byteData.buffer.asUint8List();
  }

  void updateMarkerAndCircle(LocationData newLocalData, Uint8List imageData) {
    LatLng latLng = LatLng(newLocalData.latitude, newLocalData.longitude);
    this.setState(() {
     
      marker = Marker(
        markerId: MarkerId("home"),
        position: latLng,
        rotation: newLocalData.heading,
        draggable: false,
        zIndex: 2,
        flat: true,
        anchor: Offset(0.5, 0.5),
        icon: BitmapDescriptor.fromBytes(imageData),
        // builder: (BuildContext context) {  }, point: null
      );
      circle = Circle(
          circleId: CircleId("car"),
          radius: newLocalData.accuracy,
          zIndex: 1,
          strokeColor: Colors.blue,
          center: latLng,
          fillColor: Colors.blue.withAlpha(70));
    });
  }

  void getCurrentLocation() async {
    try {
      Uint8List imageData = await getMarker();
      var location = await _locationTracker.getLocation();
      updateMarkerAndCircle(location, imageData);
      if (_lcationSubscription != null) {
        _lcationSubscription.cancel();
      }
      _lcationSubscription =
          _locationTracker.onLocationChanged().listen((newLocalData) {
       if (mapController != null) {
          mapController.animateCamera(CameraUpdate.newCameraPosition(new CameraPosition(
            bearing: 192.833,
            target: LatLng(newLocalData.latitude, newLocalData.longitude),
            tilt: 0,
            zoom: 18,
          )));
          updateMarkerAndCircle(newLocalData, imageData);
        }
      });
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        debugPrint("Permission Denied");
      }
    }
  }

  @override
  void dispose() {
    if (_lcationSubscription != null) {
      _lcationSubscription.cancel();
    }
    super.dispose();
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        mapController: mapController,
        options: new MapOptions(
          //onTap: (tapPosition, point) => getMyLocation(),
          // center: new LatLng(32.219353, 35.243198),
          minZoom: 10.0,
          maxZoom: 10,
         // zoom: 14,
        ),
        layers: [
          new TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_searching),
        onPressed: () {
          getCurrentLocation();
        },
      ),
    );
  }
}
