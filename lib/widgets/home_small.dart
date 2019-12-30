import 'package:flutter/material.dart';

class HomeSmall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: height / 6,
            ),
            Text(
              'Hello',
              style: TextStyle(
                color: Color.fromRGBO(233, 164, 47, 1.0),
                fontSize: 30.0,
              ),
            ),
            Text(
              'I\'m Ajmal',
              style: TextStyle(
                color: Color.fromRGBO(233, 164, 47, 1.0),
                fontSize: 30.0,
              ),
            ),
            Text(
              'A motivated software developer',
              style: TextStyle(
                color: Color.fromRGBO(133, 134, 147, 1.0),
                fontSize: 30.0,
              ),
            ),
          ],
        ),
      ),
      width: 1200,
      height: 600,
      color: Color.fromRGBO(30, 34, 37, 1.0),
    );
  }
}
