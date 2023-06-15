import 'package:flutter/material.dart';

void main() {
  runApp(const TabTwo());
}

class TabTwo extends StatelessWidget {
  const TabTwo({super.key});

  static const TextStyle optionStyle = TextStyle(
      fontSize: 30,
      fontWeight: FontWeight.bold
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blueAccent,
        alignment: Alignment.center,
        child: Text(
          "Tab Two",
          style: optionStyle,
        ),
      ),
    );
  }
}


