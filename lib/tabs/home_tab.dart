import 'package:flutter/material.dart';
import 'package:portfolio/widgets/home_large.dart';
import 'package:portfolio/widgets/home_small.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

// class HomeTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveWidget(
//       largeScreen: HomeLarge(),
//       smallScreen: HomeSmall(),
//     );
//   }
// }

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: HomeLarge(),
    );
  }
}
