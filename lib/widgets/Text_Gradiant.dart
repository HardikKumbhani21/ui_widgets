import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(children: [
        Text(
          "edufly",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: width * 0.18,
              foreground: Paint()
                ..shader = LinearGradient(colors: [
                  Color(0xff02F993),
                  Color(0xff3A58F5),
                ]).createShader(Rect.fromLTWH(70, 70, 50, 50))),
        ),
      ]),
    );
  }
}
