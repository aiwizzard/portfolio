import 'package:flutter/material.dart';

import '../tabs/about_tab.dart';

class HomeLarge extends StatefulWidget {
  @override
  _HomeLargeState createState() => _HomeLargeState();
}

class _HomeLargeState extends State<HomeLarge> {
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final mean = (height + width) / 2;

    return AnimatedCrossFade(
      duration: const Duration(seconds: 2),
      firstChild: Container(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: height / 7,
              ),
              Text(
                'Hello',
                style: TextStyle(
                  color: Color.fromRGBO(65, 69, 67, 1.0),
                  fontSize: mean / 6,
                ),
              ),
              Text(
                'I\'m Ajmal',
                style: TextStyle(
                  color: Color.fromRGBO(233, 164, 47, 1.0),
                  fontSize: mean / 18,
                ),
              ),
              Center(
                child: Text(
                  'A software developer',
                  style: TextStyle(
                    color: Color.fromRGBO(133, 134, 147, 1.0),
                    fontSize: mean / 25,
                  ),
                ),
              ),
              FlatButton.icon(
                label: Text(
                  'Want to know more',
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
            ],
          ),
        ),
        width: width / 1.2,
        height: height / 1.3,
        color: Color.fromRGBO(30, 34, 37, 0.7),
      ),
      secondChild: AboutTab(),
      crossFadeState:
          _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}
