// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_new, prefer_const_declarations, avoid_print, import_of_legacy_library_into_null_safe, avoid_unnecessary_containers, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoder/geocoder.dart';
import 'package:latlong2/latlong.dart';
import 'package:http/http.dart' as http;
import 'icons.dart';

class gps extends StatefulWidget {
  const gps({Key? key}) : super(key: key);
 @override
  _gps  createState() => _gps ();
}

class _gps extends State<gps > {
  
   List<Marker> allMarkers = [];
  setMarkers() {
    return allMarkers;
  }

  addToList( double latitude, double longitude) async {
    final query = "1600 Amphiteatre Parkway, Mountain View";
    var addresses = await Geocoder.local.findAddressesFromQuery(query);
    var first = addresses.first;
    setState(() {
      allMarkers.add(new Marker(
          width: 45,
          height: 45,
          point: new LatLng(latitude, longitude),
          builder: (context) => new Container(
                child: IconButton(
                  icon:   Icon(
                            MyFlutterApp.trash_alt,
                            size: 30.0,
                          ),
                  color: Colors.green,
                  iconSize: 45.0,
                  onPressed: () {
                    print(first.featureName);
                  },
                ),
              )
              
   
              ));
            
    });

  }

  
  /*
  Widget loadMap(){
    return StreamBuilder(stream:Firestore.instance.collection('Baskets').snapshots(),
    builder: (context,snapshot){
      if(())
    },);
  }
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
      
        options: new MapOptions(
          //onTap: (tapPosition, point) => getMyLocation(),
          center: new LatLng(32.219353, 35.243198),
          minZoom: 10.0,
          zoom: 14,
        ),
        
 
        layers: [
          new TileLayerOptions(
              urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: ['a', 'b', 'c']),
         
        ],
        
      ),

      
    );
  }
}
