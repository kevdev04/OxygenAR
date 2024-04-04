import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:oxygenar_front/main.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.close,
              color: Color(0xFF35A474),
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context); // Going back to previous screen
            },
          ),
        ),
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
                margin: const EdgeInsets.symmetric(horizontal: 50.0),
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
              Container(
                width: 300.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 42, 161, 36),
                      spreadRadius: 1,
                      blurRadius: 100,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: TextButton(
                  onPressed: () {
                    signInWithGoogle(context);
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(
                        'assets/logo/google.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(width: 10),
                      const Text('Continuar con Google',
                          style:
                              TextStyle(fontSize: 20.0, color: Colors.black)),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  // Handle privacy policy link
                },
                child: const Text(
                  'Visita nuestra Declaracion de Privacidad',
                  style: TextStyle(fontSize: 12.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void signInWithGoogle(BuildContext context) async {
  try {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    if (googleUser == null) {
      // The user didn't sign in correctly
      return;
    }

    GoogleSignInAuthentication? googleAuth = await googleUser.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    if (userCredential.user != null) {
      Navigator.pop(context); // Going back to previous screen
    }
  } catch (e) {
    if (e is PlatformException && e.code == 'network_error') {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Error'),
          content: const Text('Network error occurred. Please try again.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Closing the dialog
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Bienvenido a Plaint!'),
          content: const Text('Ahora disfruta de todas las funcionalidades.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const MyApp();
                }));
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }
}
