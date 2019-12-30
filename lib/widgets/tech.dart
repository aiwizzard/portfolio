import 'package:flutter/material.dart';

class Tech extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Text(
          "Languages: ",
          style: TextStyle(
            color: Color.fromRGBO(64, 64, 64, 1.0),
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Python',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        ),
        Text(
          'JavaScript',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        ),
        Text(
          'Dart',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        ),
        Text(
          'html / css',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        ),
      ],
    );
  }
}
