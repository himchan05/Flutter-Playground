import 'package:flutter/material.dart';

void main() {
  runApp(const TabOne());
}

class TabOne extends StatelessWidget {
  const TabOne({super.key});

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
        color: Colors.greenAccent,
        alignment: Alignment.center,
        child: Text(
          "Tab One",
          style: optionStyle,
        ),
      ),
    );
  }
}


