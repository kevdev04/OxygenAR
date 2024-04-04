import 'package:flutter/material.dart';

void main() {
  runApp(const Details());
}

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: const Color(0xFF35A474),
        appBar: AppBar(
          title: const Text(
            'Encino',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 28.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: const Color(0xFF35A474),
        ),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: ClipRect(
                      child: Align(
                        alignment: Alignment.centerRight,
                        widthFactor: 0.65, // Cover half the width
                        child: Image.asset(
                          'assets/plants/arbol.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildPlantInfo('12%', 'Luz Solar'),
                        _buildPlantInfo('12%', 'Luz Solar'),
                        _buildPlantInfo('12%', 'Luz Solar'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    flex: 8, // Takes up 70% of the space
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceAround, // or MainAxisAlignment.spaceBetween
                        children: [
                          Text(
                            'Distribución geográfica: Bosques templados, Norteamérica: 70%',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Especies de encino: Varias especies: 450+',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                          Text(
                            'Área forestal mundial: Bosques templados: 5%',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Expanded(
                    flex: 2, // Takes up 30% of the space
                    child: MyWidget(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlantInfo(String value, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          label,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  MyWidgetState createState() => MyWidgetState();
}

class MyWidgetState extends State<MyWidget> {
  Color button1Color = Colors.white;
  Color button2Color = const Color(0xFF35A474);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Row(
        children: [
          Expanded(
            child: SizedBox.expand(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: button1Color,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    // When button 1 is pressed, it turns white and button 2 turns green
                    button1Color = Colors.white;
                    button2Color = const Color(0xFF35A474);
                  });
                },
                child: Text(
                  'Información de la Planta',
                  style: TextStyle(
                    color: button1Color == const Color(0xFF35A474)
                        ? Colors.white
                        : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox.expand(
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: button2Color,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    // When button 2 is pressed, it turns white and button 1 turns green
                    button2Color = Colors.white;
                    button1Color = const Color(0xFF35A474);
                  });
                },
                child: Text(
                  'Cuidados de la Planta',
                  style: TextStyle(
                    color: button2Color == const Color(0xFF35A474)
                        ? Colors.white
                        : Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
