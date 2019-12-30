import 'package:flutter/material.dart';
import 'package:portfolio/config/assets.dart';
import 'package:portfolio/config/constants.dart';
import 'dart:html' as html;

class Social extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconButton(
          icon: SizedBox(
              width: 15, height: 15, child: Image.asset(Assets.instagram)),
          onPressed: () =>
              html.window.open(Constants.PROFILE_INSTAGRAM, 'aju_for_short'),
        ),
        IconButton(
          icon: SizedBox(
              width: 15, height: 15, child: Image.asset(Assets.facebook)),
          onPressed: () =>
              html.window.open(Constants.PROFILE_FACEBOOK, 'aiwizzard'),
        ),
        IconButton(
          icon: SizedBox(
              width: 15, height: 15, child: Image.asset(Assets.linkedin)),
          onPressed: () =>
              html.window.open(Constants.PROFILE_LINKEDIN, 'ajmal'),
        ),
        IconButton(
          icon: SizedBox(
              width: 15, height: 15, child: Image.asset(Assets.github)),
          onPressed: () =>
              html.window.open(Constants.PROFILE_GITHUB, 'aiwizzard'),
        ),
      ],
    );
  }
}
