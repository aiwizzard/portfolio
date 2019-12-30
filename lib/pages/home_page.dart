import 'package:flutter/material.dart';
import 'package:portfolio/config/assets.dart';
import 'package:portfolio/tabs/about_tab.dart';
import 'package:portfolio/tabs/contact_tab.dart';
import 'package:portfolio/tabs/home_tab.dart';
import 'package:portfolio/widgets/responsive_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> tabWidgets = <Widget>[
    HomeTab(),
    AboutTab(),
    ContactTab(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.background), // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
        ),
        Material(
          color: Color.fromRGBO(26, 30, 33, 0),

          // backgroundColor: Colors.transparent,
          // appBar: AppBar(
          //   toolbarOpacity: 0.5,
          //   title: FlatButton(
          //     child: Text(
          //       'Home',
          //       style: TextStyle(
          //         color: Color.fromRGBO(233, 164, 47, 1.0),
          //         fontSize: 20.0,
          //       ),
          //     ),
          //     onPressed: () {
          //       setState(() {
          //         _selectedIndex = 0;
          //       });
          //     },
          //   ),
          //   actions: <Widget>[
          //     FlatButton.icon(
          //       label: Text(
          //         'About',
          //         style: TextStyle(
          //           color: Color.fromRGBO(233, 164, 47, 1.0),
          //           fontSize: 15.0,
          //         ),
          //       ),
          //       icon: Icon(
          //         Icons.account_circle,
          //         color: Color.fromRGBO(233, 164, 47, 1.0),
          //       ),
          //       onPressed: () {
          //         setState(() {
          //           _selectedIndex = 1;
          //         });
          //       },
          //     ),
          //     FlatButton.icon(
          //       label: Text(
          //         'Contact',
          //         style: TextStyle(
          //           color: Color.fromRGBO(233, 164, 47, 1.0),
          //           fontSize: 15.0,
          //         ),
          //       ),
          //       icon: Icon(
          //         Icons.chat,
          //         color: Color.fromRGBO(233, 164, 47, 1.0),
          //       ),
          //       onPressed: () {
          //         setState(() {
          //           _selectedIndex = 2;
          //         });
          //       },
          //     ),
          //     SizedBox(
          //       width: 20,
          //     )
          //   ],
          //   backgroundColor: Color.fromRGBO(26, 30, 33, 1.0),
          //   bottomOpacity: 0,
          // ),
          child: Center(
            child: tabWidgets.elementAt(_selectedIndex),
          ),
        ),
      ],
    );
  }
}
