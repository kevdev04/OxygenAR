import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/logo/icono.png',
                  width: 300,
                  height: 300,
                ),
              ),
              const SizedBox(height: 40.0),
              Container(
                margin: const EdgeInsets.symmetric(
                    horizontal: 50.0), // Add left and right margins
                child: const Center(
                  child: Text(
                    '¡Descubre la belleza que crece a tu alrededor!',
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(height: 50.0),
              // ignore: sized_box_for_whitespace
              Container(
                width: 300.0,
                height: 70.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    elevation: 50.0,
                    shadowColor: Colors.green,
                  ),
                  child: Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround, // Center the content
                    children: [
                      Image.asset(
                        'assets/logo/google.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: 10), // Add some spacing
                      const Text('Continuar con Google',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'Visita nuestra Declaracion de Privacidad',
                style: TextStyle(fontSize: 12.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
