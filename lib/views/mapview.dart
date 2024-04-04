import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:oxygenar_front/main.dart';

import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/rendering.dart';

extension ToBitDescription on Widget {
  Future<BitmapDescriptor> toBitmapDescriptor(
      {Size? logicalSize,
      Size? imageSize,
      Duration waitToRender = const Duration(milliseconds: 300),
      TextDirection textDirection = TextDirection.ltr}) async {
    final widget = RepaintBoundary(
      child: MediaQuery(
          data: const MediaQueryData(),
          child: Directionality(textDirection: TextDirection.ltr, child: this)),
    );
    final pngBytes = await createImageFromWidget(widget,
        waitToRender: waitToRender,
        logicalSize: logicalSize,
        imageSize: imageSize);
    return BitmapDescriptor.fromBytes(pngBytes);
  }
}

/// Creates an image from the given widget by first spinning up a element and render tree,
/// wait [waitToRender] to render the widget that take time like network and asset images

/// The final image will be of size [imageSize] and the the widget will be layout, ... with the given [logicalSize].
/// By default Value of  [imageSize] and [logicalSize] will be calculate from the app main window

Future<Uint8List> createImageFromWidget(Widget widget,
    {Size? logicalSize,
    required Duration waitToRender,
    Size? imageSize}) async {
  final RenderRepaintBoundary repaintBoundary = RenderRepaintBoundary();
  final view = ui.PlatformDispatcher.instance.views.first;
  logicalSize ??= view.physicalSize / view.devicePixelRatio;
  imageSize ??= view.physicalSize;

  // assert(logicalSize.aspectRatio == imageSize.aspectRatio);

  final RenderView renderView = RenderView(
    view: view,
    child: RenderPositionedBox(
        alignment: Alignment.center, child: repaintBoundary),
    configuration: ViewConfiguration(
      size: logicalSize,
      devicePixelRatio: 1.0,
    ),
  );

  final PipelineOwner pipelineOwner = PipelineOwner();
  final BuildOwner buildOwner = BuildOwner(focusManager: FocusManager());

  pipelineOwner.rootNode = renderView;
  renderView.prepareInitialFrame();

  final RenderObjectToWidgetElement<RenderBox> rootElement =
      RenderObjectToWidgetAdapter<RenderBox>(
    container: repaintBoundary,
    child: widget,
  ).attachToRenderTree(buildOwner);

  buildOwner.buildScope(rootElement);

  await Future.delayed(waitToRender);

  buildOwner.buildScope(rootElement);
  buildOwner.finalizeTree();

  pipelineOwner.flushLayout();
  pipelineOwner.flushCompositingBits();
  pipelineOwner.flushPaint();

  final ui.Image image = await repaintBoundary.toImage(
      pixelRatio: imageSize.width / logicalSize.width);
  final ByteData? byteData =
      await image.toByteData(format: ui.ImageByteFormat.png);

  return byteData!.buffer.asUint8List();
}

Future<void> addCustomMarker() async {
  final icon = await getCustomIcon();
  markerList.add(
    Marker(
      markerId: const MarkerId("MarkerId"),
      position: LatLng(21.000000, 72.000000),
      icon: icon,
    ),
  );
}

Future<BitmapDescriptor> getCustomIcon() async {
  return SizedBox(
    height: 200,
    width: 200,
    child: Image.asset("temp image"),
  ).toBitmapDescriptor();
}

List<Marker> markerList = <Marker>[];

void main() => runApp(const MapView());

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController;
  final LatLng _initialPosition = const LatLng(20.42281, -103.23303);
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  void _addMarker(LatLng position) {
    setState(() {
      _markers.clear();
      _markers.add(Marker(
        markerId: MarkerId(position.toString()),
        position: position,
      ));
    });
  }

  Future<void> _searchAndPlaceMarker(String address) async {
    final response = await http.get(Uri.parse(
        'https://maps.googleapis.com/maps/api/geocode/json?address=$address&key=YOUR_API_KEY'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final results = data['results'] as List<dynamic>;
      if (results.isNotEmpty) {
        final location = results[0]['geometry']['location'];
        final latLng = LatLng(location['lat'], location['lng']);
        _addMarker(latLng);
        mapController.animateCamera(CameraUpdate.newLatLngZoom(latLng, 15.0));
      } else {
        print('No se encontraron resultados para la dirección: $address');
      }
    } else {
      print('Error al realizar la solicitud de geocodificación');
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
              zoom: 14.0,
            ),
            mapType: MapType.normal,
            markers: _markers,
            onTap: _addMarker,
          ),
          Positioned(
            top: 40.0,
            left: 0.0,
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 30, // This will make the icon green
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyApp();
                }));
              },
            ),
          ),
          Positioned(
            top: 40.0,
            left: 50.0,
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
