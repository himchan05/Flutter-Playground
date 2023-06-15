import 'package:flutter/material.dart';

void main() {
  runApp(const TabThree());
}

class TabThree extends StatelessWidget {
  const TabThree({super.key});
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
        color: Colors.yellowAccent,
        alignment: Alignment.center,
        child: Text(
          "Tab Three",
          style: optionStyle,),
      ),
    );
  }
}