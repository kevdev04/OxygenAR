import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              icon: const Icon(
                Icons.info_outline_rounded,
                size: 35,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: Text(
                  'OxygenAR',
                  style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 40.0),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 50.0), // Add left and right margins
                child: const Center(
                  child: Text(
                    'Como prefieres Iniciar Sesion',
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Iniciar Sesion'),
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Registrarse'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
