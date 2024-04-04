import 'package:flutter/material.dart';
import 'package:oxygenar_front/views/details.dart';

class Plantscard extends StatelessWidget {
  const Plantscard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
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
              flex: 7,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF35A474),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.sunny, // Replace with your first icon
                            color: Colors.white,
                            size: 25,
                          ),
                          Icon(
                            Icons.ac_unit, // Replace with your second icon
                            color: Colors.white,
                            size: 25,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      decoration: const BoxDecoration(
                          color: Color(0xFF35A474),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          image: DecorationImage(
                              image: AssetImage('assets/plants/arbol.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 3,
              child: Center(
                // Add this line
                child: Text(
                  'Encino',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
