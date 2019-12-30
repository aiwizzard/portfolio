import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: <Widget>[
        Text(
          "Skills: ",
          style: TextStyle(
            color: Color.fromRGBO(64, 64, 64, 1.0),
            fontSize: 20,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Android Development',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        ),
        Text(
          'Web Development',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        ),
        Text(
          'Machine Learning',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        ),
        Text(
          'Web design',
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1.0),
          ),
        ),
      ],
    );
  }
}
