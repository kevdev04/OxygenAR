import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MapView());

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;

  final LatLng _initialPosition = const LatLng(19.432608, -99.133209);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: _initialPosition,
              zoom: 11.0,
            ),
          ),
          Positioned(
            bottom: 140.0,
            right: 10.0,
            child: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              materialTapTargetSize: MaterialTapTargetSize.padded,
              backgroundColor: Colors.green,
              child: const Icon(
                Icons.map,
                size: 36.0,
                color: Colors.white,
              ),
            ),
          ),
          Positioned(
            bottom: 240.0,
            right: 10.0,
            child: FloatingActionButton(
              onPressed: () {
                // Add your onPressed code here!
              },
              materialTapTargetSize: MaterialTapTargetSize.padded,
              backgroundColor: Colors.green,
              child: const Icon(
                Icons.map,
                size: 36.0,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
