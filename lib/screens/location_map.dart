// ignore_for_file: camel_case_types, library_prefixes, prefer_final_fields, unused_field, avoid_print, import_of_legacy_library_into_null_safe, unnecessary_import, unused_import

import 'dart:async';
import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'
    show BuildContext, Key, Scaffold, State, StatefulWidget, Widget;
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

class locationMap extends StatefulWidget {
  const locationMap({Key? key}) : super(key: key);

  @override
  State<locationMap> createState() => _locationMapState();
}

class _locationMapState extends State<locationMap> {
  late IO.Socket socket;
  late Map<MarkerId, Marker> _markers;
  Completer<GoogleMapController> _controller = Completer();
  static const CameraPosition _cameraPosition =
      CameraPosition(target: LatLng(37.42796, -122.085749), zoom: 14);
  @override
  void initState() {
    super.initState();
    _markers = <MarkerId, Marker>{};
    _markers.clear();
    initSocket();
  }

  Future<int> initSocket() async {
    try {
      socket = IO.io("http://127.0.0.1:3400/", <String, dynamic>{
        'transports': ['websocket'],
        'autoConnect': true,
      });
      socket.connect();
      socket.on("position-change", (data) => {});
    } catch (e) {
      print(e.toString());
    }
    return 0 ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _cameraPosition,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
        markers: Set<Marker>.of(_markers.values),
      ),
    );
  }
}
