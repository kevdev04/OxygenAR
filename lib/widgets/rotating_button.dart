import 'package:flutter/material.dart';

class RotatingButton extends StatefulWidget {
  const RotatingButton({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RotatingButtonState createState() => _RotatingButtonState();
}

class _RotatingButtonState extends State<RotatingButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: 150.0, // Set the height
      width: 150.0, // Set the width
      child: FloatingActionButton(
        onPressed: () {
          _controller.forward(from: 0.0);
        },
        backgroundColor: const Color(0xFF94C794),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        child: RotationTransition(
          turns: Tween(begin: 3.0, end: 0.0).animate(_controller),
          child: Image.asset(
            'assets/logo/mainbtn.png', // Replace with your PNG image path
            height: 120.0, // Set the height
            width: 120.0, // Set the width
            color: Colors.white,
            alignment: Alignment.center,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
