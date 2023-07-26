import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TinyPlanMap extends StatefulWidget {
  const TinyPlanMap({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<TinyPlanMap> {
// on below line we are initializing our controller for google maps.
  Completer<GoogleMapController> _controller = Completer();

// on below line we are specifying our camera position
  static final CameraPosition _tGoogle = const CameraPosition(
    target: LatLng(15.976990, 108.260835),
    zoom: 14.4746,
  );

// on below line we have created list of markers
  List<Marker> _marker = [];
  final List<Marker> _list = const [
    // List of Markers Added on Google Map
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(16.0666664, 108.2333324),
        infoWindow: InfoWindow(
          title: 'My Position',
        )),

    Marker(
        markerId: MarkerId('2'),
        position: LatLng(16.066667, 108.233333),
        infoWindow: InfoWindow(
          title: 'Location 1',
        )),

    Marker(
        markerId: MarkerId('3'),
        position: LatLng(15.976990, 108.260835),
        infoWindow: InfoWindow(
          title: 'Location 2',
        )),

    Marker(
        markerId: MarkerId('4'),
        position: LatLng(15.976990, 108.260835),
        infoWindow: InfoWindow(
          title: 'Location 3',
        )),
    Marker(
        markerId: MarkerId('5'),
        position: LatLng(15.976990, 108.260835),
        infoWindow: InfoWindow(
          title: 'Location 4',
        )),
    Marker(
        markerId: MarkerId('6'),
        position: LatLng(15.976990, 108.260835),
        infoWindow: InfoWindow(
          title: 'Location 5',
        )),
    Marker(
        markerId: MarkerId('7'),
        position: LatLng(15.976990, 108.260835),
        infoWindow: InfoWindow(
          title: 'Location 6',
        )),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(190, 4, 66, 160),
          title: Text("Tiny Plan"),
        ),
        body: Container(
          // on below line creating google maps.
          child: GoogleMap(
            // on below line setting camera position
            initialCameraPosition: _tGoogle,
            // on below line specifying map type.
            mapType: MapType.normal,
            // on below line setting user location enabled.
            myLocationEnabled: true,
            // on below line setting compass enabled.
            compassEnabled: true,
            // on below line specifying controller on map complete.
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ));
  }
}
