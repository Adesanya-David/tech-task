import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../../const/const.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Grocery shopping would be available soon",
        style: Styles.bodyText.copyWith(color: Colors.black),
      )),
    );
  }
}
