import 'package:flutter/material.dart';

import 'responsive_widget.dart';
import 'social_media.dart';

class AboutInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: height / 6,
          ),
          Text(
            'Web / Android Development',
            style: TextStyle(
              color: Color.fromRGBO(65, 69, 67, 1.0),
              fontSize: 20.0,
            ),
          ),
          Text(
            'Ajmal',
            style: TextStyle(
              color: Color.fromRGBO(233, 164, 47, 1.0),
              fontSize: 40.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: width / 23),
            child: Social(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 13.0, right: 17.0, top: 30.0),
            child: Text(
              'An Highly motivated Software developer with proficiant skill in Building android applications, web appilcations and machine learning models',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1.0),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
      width: ResponsiveWidget.isLargeScreen(context) ? width / 5 : width / 3,
    );
  }
}
