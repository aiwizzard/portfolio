import 'package:flutter/material.dart';
import 'package:portfolio/widgets/about_large.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

import '../widgets/about_small.dart';

class AboutTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget(
      largeScreen: AboutLarge(),
      smallScreen: AboutSmall(),
    );
  }
}
