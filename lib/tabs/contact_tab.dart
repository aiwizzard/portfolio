import 'dart:ui';

import 'package:flutter/material.dart';

class ContactTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Thank You',
        style: TextStyle(fontSize: MediaQuery.of(context).size.width / 5),
      ),
    );
  }
}
