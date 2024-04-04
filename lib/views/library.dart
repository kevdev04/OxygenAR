// library.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:oxygenar_front/main.dart';
import 'package:oxygenar_front/views/details.dart';

List<String> texts = [
  '¡Descubre el poder de la naturaleza en tus espacios favoritos!',
  'Hoy plantamos, mañana respiramos!',
  '¡Transforma tu pantalla en un jardín de inspiración!',
  'Un árbol a la vez, un futuro más verde.',
  'Haz crecer el mundo, planta árboles hoy.',
];

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.green,
            size: 28,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const MyApp();
            }));
          },
        ),
        title: const Text(
          'Mis Plantas',
          style: TextStyle(
              color: Colors.green, fontSize: 20, fontWeight: FontWeight.bold),
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
                        borderRadius:
                            BorderRadius.circular(10), // Add some border radius
                      ),
                      child: Center(
                        child: Text(
                          texts[i],
                          style: const TextStyle(
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
            flex: 7,
            child: Row(
              children: [
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2, // Number of columns
                    childAspectRatio: 1, // Aspect ratio of each item
                    mainAxisSpacing: 20, // Spacing between items vertically
                    crossAxisSpacing: 20, // Spacing between items horizontally
                    padding: const EdgeInsets.all(18.0), // Add padding
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return const Details();
                          }));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFF0F0F0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Expanded(
                                flex: 6,
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        color: Colors
                                            .red, // Replace with your desired color or decoration
                                      ),
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Container(
                                        color: Colors
                                            .blue, // Replace with your desired color or decoration
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Expanded(
                                flex: 4,
                                child: Column(
                                  children: [
                                    Text('Main Text',
                                        style: TextStyle(
                                            fontSize:
                                                20)), // Replace with your main text
                                    Text('Brief Description',
                                        style: TextStyle(
                                            fontSize:
                                                12)), // Replace with your brief description
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
