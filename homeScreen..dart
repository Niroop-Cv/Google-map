import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MyHome extends StatelessWidget {
  MyHome({super.key});

  LocationData? loctdata;
  Location lctn = Location();

  Future<LocationData?> getLocate() async {
    loctdata = await lctn.getLocation();
    return loctdata;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: FutureBuilder(
          future: getLocate(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            return GoogleMap(
              initialCameraPosition: CameraPosition(
                  zoom: 14,
                  target: LatLng(
                      snapshot.data!.latitude!, snapshot.data!.longitude!)),
              mapToolbarEnabled: true,
              mapType: MapType.hybrid,
              compassEnabled: true,
              trafficEnabled: true,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              
            );
          }),
    );
  }
}
