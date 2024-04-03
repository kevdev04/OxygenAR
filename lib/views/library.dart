import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:awesome_circular_chart/awesome_circular_chart.dart';

void main() => runApp(const Library());
List<String> texts = [
  '¡Descubre el poder de la naturaleza en tus espacios favoritos!',
  'Hoy plantamos, mañana respiramos!',
  '¡Transforma tu pantalla en un jardín de inspiración!',
  'Un árbol a la vez, un futuro más verde.',
  'Haz crecer el mundo, planta árboles hoy.',
];

class Library extends StatelessWidget {
  const Library({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Plaint',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 3, // 30%
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 200.0,
                    autoPlay: true,
                    viewportFraction:
                        1.0, // Make each item take up the entire width of the carousel
                  ),
                  items: [0, 1, 2, 3, 4].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          margin: const EdgeInsets.all(
                              20), // Add some margin around the container
                          decoration: BoxDecoration(
                            color: const Color(
                                0xFF35A474), // Set the color of the container
                            borderRadius: BorderRadius.circular(
                                10), // Add some border radius
                          ),
                          child: Center(
                            child: Text(
                              texts[i],
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
              Expanded(
                flex: 7, // 70%
                child: Container(
                  color: Colors.blue,
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors
                                    .red, // Set the color of the container
                                child: Center(child: Text('Widget 1')),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors
                                    .green, // Set the color of the container
                                child: Center(child: Text('Widget 2')),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Container(
                                color: Colors
                                    .yellow, // Set the color of the container
                                child: Center(child: Text('Widget 3')),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                color: Colors
                                    .purple, // Set the color of the container
                                child: Center(child: Text('Widget 4')),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
