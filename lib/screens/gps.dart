// ignore_for_file: camel_case_types, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class gps extends StatelessWidget {
  const gps({Key? key}) : super(key: key);

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
