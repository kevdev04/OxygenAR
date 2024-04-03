import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.forest_outlined,
              color: Color(0xFF35A474),
              size: 28,
            ),
            onPressed: () {
              // Handle the icon press here
            },
          ),
          title: const Text(
            'Plaint',
          ),
          centerTitle: true,
          titleTextStyle: const TextStyle(
            color: Color(0xFF35A474),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.account_circle_outlined,
                color: Color(0xFF35A474),
                size: 28,
              ),
              onPressed: () {
                // Handle the icon press here
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0), // Add this line
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text('Presiona ver las plantas creadas',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center),
                const SizedBox(height: 40.0),
                // ignore: sized_box_for_whitespace
                Container(
                  height: 150.0, // Set the height
                  width: 150.0, // Set the width
                  child: FloatingActionButton(
                    onPressed: () {
                      // Handle the button press here
                    },
                    backgroundColor: const Color(0xFF94C794),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)),
                    child: const Icon(Icons.air,
                        color: Colors.white,
                        size: 50.0), // Increase the icon size as well
                  ),
                ),
                const SizedBox(height: 40.0),
                const Text('44%',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34.0,
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center),
                const SizedBox(height: 10.0),
                const Text('CO2 transormado al día',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.center),
                Expanded(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 150.0,
                      viewportFraction: 1 / 3,
                    ),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: const EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 3,
                                  blurRadius: 2,
                                  offset: const Offset(0, 3),
                                ),
                              ],
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                            child: Text(
                              'text $i',
                              style: const TextStyle(fontSize: 16.0),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
