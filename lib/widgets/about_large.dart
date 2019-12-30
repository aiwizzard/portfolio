import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio/config/assets.dart';
import 'package:portfolio/config/constants.dart';

import 'package:portfolio/widgets/social_media.dart';

import '../tabs/contact_tab.dart';
import 'about_info.dart';
import 'home_large.dart';
import 'responsive_widget.dart';
import 'skills.dart';
import 'tech.dart';

class AboutLarge extends StatefulWidget {
  @override
  _AboutLargeState createState() => _AboutLargeState();
}

class _AboutLargeState extends State<AboutLarge> {
  bool _first = true;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return AnimatedCrossFade(
      duration: const Duration(seconds: 2),
      firstChild: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                AboutInfo(),
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
            Container(
              height: height / 2,
              child: Image.asset(
                Assets.avatar,
                color: Color.fromRGBO(0, 0, 255, 1.0),
                colorBlendMode: BlendMode.modulate,
              ),
            ),
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
