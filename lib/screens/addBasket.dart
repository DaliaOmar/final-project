// ignore_for_file: file_names, camel_case_types, library_prefixes, unused_element, must_be_immutable, unnecessary_new, prefer_const_constructors, import_of_legacy_library_into_null_safe, use_key_in_widget_constructors, avoid_unnecessary_containers, avoid_print, unused_import, prefer_const_declarations, unused_local_variable, deprecated_member_use, prefer_final_fields, unnecessary_this

import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geocoding/geocoding.dart';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:latlong2/latlong.dart';
import 'package:waste_collector/constants.dart';
import 'icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class addBasket  extends StatefulWidget {
  const addBasket ({Key? key}) : super(key: key);
  @override
  _addBasket  createState() => _addBasket ();
}

class _addBasket extends State<addBasket > {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyMap(),
      //    backgroundColor: Colors.amber,
    );
  }
}

class MyMap extends StatefulWidget {
  @override
  _MyMap createState() => new _MyMap();
}

class _MyMap extends State<MyMap> {
  bool isChecked = false;  
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

  Future addMarker() async {
     
   TextEditingController _latitude = TextEditingController();
   TextEditingController _longitude = TextEditingController();
   TextEditingController _number = TextEditingController();
    await showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text(
              'اضافة حاوية',
              style: new TextStyle(fontSize: 17.0),
            ),
             actions: <Widget> [ 
            
              Row(
     children: [
        SizedBox(
            height: 100.0,
            width: 20,),
       SizedBox(
            height: 100.0,
                width: 100,
            child:
           
       TextField(
        
             controller: _latitude,       
      decoration: InputDecoration(
       //  contentPadding: EdgeInsets.fromLTRB(90,0, 0, 0),
          hintText: 'الإحداثي السيني',
      )  )),
       SizedBox(
            height: 100.0,
            width: 50,),
      SizedBox(
            height: 100.0,
            width: 100,
            child:
 TextField(
              controller: _longitude,           
      decoration: InputDecoration(
     
         // contentPadding: EdgeInsets.fromLTRB(10, 0, 70, 0),
          hintText: 'الإحداثي الصادي',
     ) ) ),

     ]),
       Row(
     children: [
        SizedBox(
            height: 100.0,
            width: 20,),
       SizedBox(
            height: 100.0,
                width: 100,
            child:
           
       TextField(
        
             controller: _number,       
      decoration: InputDecoration(
       //  contentPadding: EdgeInsets.fromLTRB(90,0, 0, 0),
          hintText: 'رقم الحاوية',
      )  )),
       SizedBox(
            height: 100.0,
            width: 20,),
      SizedBox(
            height: 100.0,
            width: 150,
            
            child:Row(
              children:[
                Text("حالة الحاوية"),
Checkbox(  value:isChecked, onChanged: ( value) {  
                      setState(() {
                         isChecked = value!;
                      });
                           
  
  },  
)],  )
 ),

     ]),
       FlatButton(
                  textColor: Colors.black,
                 
                  child: Text('اضافة'),
                onPressed: () {
                  
                  addToList(double.parse(_latitude.text.toString()),double.parse(_longitude.text.toString()) ).then( 
                  FirebaseFirestore.instance.collection("Baskets").add(
               {
                 "latitude" : double.parse(_latitude.text.toString()),
                 "longitude":double.parse(_longitude.text.toString()),
                  "number":int.parse(_number.text.toString()),
               })
           
               ).then( Navigator.of(context).pop());
                  

          
                

                },
       ),
     
     ],
     
     
           
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    
    return new Scaffold(
      appBar: new AppBar(
          backgroundColor: const Color.fromARGB(255, 21, 109, 24),
          title: new Text('اضافة حاوية'),
          leading: new IconButton(
            icon: Icon(Icons.add),
            onPressed: () async {
              addMarker();
            },
          )),
             
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
          new MarkerLayerOptions(
            markers: setMarkers(),
          )
        ],
        
      ),
   
    );
  }
}
