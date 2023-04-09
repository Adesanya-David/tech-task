import 'package:flutter/material.dart';

import '../../const/const.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  static final GlobalKey<ScaffoldState> _scaffoldKey =
      GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(children: [
        Center(
          child: Text(
            "Grocery shop coming soon!",
            style: Styles.headlineStyle,
          ),
        ),
      ]),
    );
  }
}
