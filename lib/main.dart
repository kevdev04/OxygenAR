// main.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:oxygenar_front/main.dart';
import 'package:oxygenar_front/views/auth.dart';
import 'package:oxygenar_front/views/library.dart';
import 'package:oxygenar_front/views/mapview.dart';
import 'package:oxygenar_front/widgets/rotating_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.forest_outlined,
            color: Color(0xFF35A474),
            size: 28,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const Library();
            }));
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
              Icons.map_outlined,
              color: Color(0xFF35A474),
              size: 28,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MapView()),
              );
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle_outlined,
              color: Color(0xFF35A474),
              size: 28,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AuthScreen()),
              );
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
              const Padding(
                padding: EdgeInsets.all(12.0), // Adjust the padding as needed
                child: Text(
                  'Presiona conocer la condicion del aire que respiras',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 21.0,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 80.0),
              // ignore: sized_box_for_whitespace
              const RotatingButton(),
              const SizedBox(height: 50.0),
              const Text('21%',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40.0,
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
              const SizedBox(height: 20.0),
              const Text('Pronosticos',
                  style: TextStyle(
                    color: Color.fromARGB(255, 179, 179, 179),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center),
              Expanded(
                child: CarouselSlider(
                  options: CarouselOptions(
                    height: 130.0,
                    viewportFraction: 1 / 3,
                  ),
                  items: [
                    {'icon': Icons.compost, 'text': 'C02 Purificado'},
                    {'icon': Icons.map, 'text': 'Mapa'},
                    {'icon': Icons.diversity_3_outlined, 'text': 'Comunidad'},
                    {'icon': Icons.loyalty, 'text': 'Beneficios'},
                    {'icon': Icons.air, 'text': 'Calidad Aire'},
                  ].map((item) {
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
                                color: Colors.grey.withOpacity(0.2),
                                spreadRadius: 3,
                                blurRadius: 3,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                item['icon'] as IconData?,
                                size: 50,
                                color: const Color(0xFF35A474),
                              ),
                              Text(
                                item['text'] as String,
                                style: const TextStyle(fontSize: 12.0),
                                textAlign: TextAlign.center,
                              ),
                            ],
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
    );
  }
}
