import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

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
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final LatLng _initialPosition = const LatLng(20.655356, -103.389449);
  final Set<Marker> _markers = {};
  LatLng? _selectedMarkerPosition;

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  Future<void> _searchAndPlaceMarker(String value) async {
    List<Location> locations = await locationFromAddress(value);
    if (locations.isNotEmpty) {
      Location location = locations.first;
      LatLng latLng = LatLng(location.latitude!, location.longitude!);
      _addMarker(latLng);
      // Mueve la cámara del mapa a la nueva ubicación
      mapController.animateCamera(CameraUpdate.newLatLngZoom(latLng, 15.0));
    } else {
      // No se encontró ninguna ubicación para la dirección proporcionada
      // Puedes mostrar un mensaje de error al usuario o realizar otra acción apropiada.
    }
  }

  void _addMarker(LatLng position) {
    setState(() {
      _markers.clear();
      _markers.add(Marker(
        markerId: MarkerId(position.toString()),
        position: position,
        draggable: true,
        onDragEnd: (LatLng newPosition) {
          _selectedMarkerPosition = newPosition;
        },
      ));
    });
  }

  void _handleSearch(String value) async {
    print('Dirección ingresada: $value');
    List<Location> locations = await locationFromAddress(value);
    if (locations.isNotEmpty) {
      Location location = locations.first;
      LatLng latLng = LatLng(location.latitude!, location.longitude!);
      _addMarker(latLng);
      // Mueve la cámara del mapa a la nueva ubicación
      mapController.animateCamera(CameraUpdate.newLatLngZoom(latLng, 15.0));
    } else {
      print('No se encontraron ubicaciones para la dirección: $value');
    }
  }

  void _placeSelectedMarker() {
    if (_selectedMarkerPosition != null) {
      setState(() {
        _markers.add(Marker(
          markerId: MarkerId(_selectedMarkerPosition.toString()),
          position: _selectedMarkerPosition!,
        ));
      });
    }
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
              zoom: 15.0,
            ),
            mapType: MapType.normal,
            markers: _markers,
            onTap: _addMarker,
          ),
          Positioned(
            bottom: 20.0,
            right: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                FloatingActionButton(
                  onPressed: _placeSelectedMarker,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: () {
                    _selectedMarkerPosition = null;
                  },
                  child: const Icon(Icons.delete),
                ),
              ],
            ),
          ),
          Positioned(
            top: 20.0,
            left: 20.0,
            right: 20.0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 2),
                    blurRadius: 6.0,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        hintText: 'Buscar dirección',
                        border: InputBorder.none,
                      ),
                      onSubmitted: _searchAndPlaceMarker,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {
                      _searchAndPlaceMarker('');
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

