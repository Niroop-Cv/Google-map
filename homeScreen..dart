import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(zoom: 15, target: LatLng(11.232580, 75.803214)),
        mapToolbarEnabled: true,
        mapType: MapType.hybrid,
        compassEnabled: true,
        trafficEnabled: true,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
      ),
    );
  }
}
