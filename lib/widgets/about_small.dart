import 'package:flutter/material.dart';

import 'package:portfolio/config/assets.dart';
import 'social_media.dart';
import 'package:portfolio/tabs/contact_tab.dart';

class AboutSmall extends StatefulWidget {
  @override
  _AboutSmallState createState() => _AboutSmallState();
}

class _AboutSmallState extends State<AboutSmall> {
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return AnimatedCrossFade(
      duration: const Duration(seconds: 2),
      firstChild: Container(
        child: ListView(
          children: <Widget>[
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                    height: height / 15,
                  ),
                  Text(
                    'Ajmal',
                    style: TextStyle(
                      color: Color.fromRGBO(233, 164, 47, 1.0),
                      fontSize: 40.0,
                    ),
                  ),
                  Text(
                    'Web / Android Developer',
                    style: TextStyle(
                      color: Color.fromRGBO(65, 69, 67, 1.0),
                      fontSize: 20.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width / 23),
                    child: Social(),
                  ),
                  Container(
                    height: height / 2,
                    child: Image.asset(
                      Assets.avatar,
                      color: Color.fromRGBO(0, 0, 255, 1.0),
                      colorBlendMode: BlendMode.modulate,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: 27.0, right: 27.0, top: 27.0, bottom: 20),
                    child: Text(
                      'An Highly motivated Software developer with proficiant skill in Building android applications, web appilcations and machine learning models',
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1.0),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  FlatButton.icon(
                    label: Text(
                      'done',
                    ),
                    icon: Icon(
                      Icons.navigate_next,
                    ),
                    onPressed: () {
                      setState(() {
                        _first = false;
                      });
                    },
                  ),
                ]),
          ],
        ),
        width: width / 1.2,
        height: height / 1.3,
        color: Color.fromRGBO(30, 34, 37, 0.7),
      ),
      secondChild: ContactTab(),
      crossFadeState:
          _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}
