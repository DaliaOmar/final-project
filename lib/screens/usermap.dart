// ignore_for_file: library_prefixes, prefer_const_constructors, unnecessary_new, import_of_legacy_library_into_null_safe, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as latLng;


class Track extends StatefulWidget {
  const Track({Key? key}) : super(key: key);
  @override
  _Track createState() => _Track();
}

class _Track extends State<Track> {


  // This widget is the root of your application.
    double long = 49.5;
  double lat = -0.09;

  var location = [];
  latLng.LatLng point = latLng.LatLng(49.5, -0.09);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Track',
   
        theme: ThemeData(
            //   primarySwatch: Colors.white,
            ),
        home: Directionality(
          textDirection: TextDirection.rtl,
          child: Scaffold(
            appBar: AppBar(
              title: const Text('اسم التطبيف'),
              backgroundColor: const Color.fromARGB(255, 21, 109, 24),
              centerTitle: true,
              elevation: 6,
            ),

            body: MyMap(),
          ),
        ));
  }
}



class MyMap extends StatelessWidget {
   MyMap({Key? key}) : super(key: key);
 double long = 49.5;
  double lat = -0.09;
   GlobalKey mapKey = GlobalKey();
  var location = [];
  latLng.LatLng point = latLng.LatLng(49.5, -0.09);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
         FlutterMap(
  
      options: new MapOptions(
        //onTap: (tapPosition, point) => getMyLocation(),
        //center: latLng.LatLng(51.5, -0.09),
        zoom: 13.0,
      ),
      layers: [
        new TileLayerOptions(
            urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
            
            subdomains: ['a', 'b', 'c']),
          
      ],
    ),
    Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 14.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Card(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(16.0),
                    hintText: "ابحث عن موقعك ",
                    prefixIcon: Icon(Icons.location_on_outlined),
                  ),
                ),
              ),
            
              ]

              )),
       
        
       
       
       
       ]
        );

  }      
}
   GlobalKey mapKey = GlobalKey();
/*getMyLocation()async
  {
    try {
      GeoPoint p = await mapKey.currentState.myLocation();
      double lat=p.latitude;
      double lon=p.longitude;
      print(  "latitude is :$lat,  longitude is:$lon");
    } on GeoPointException catch (e) {
       print( "${e.errorMessage()}");
    }
  }*/
