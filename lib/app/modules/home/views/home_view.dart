import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double widthDevice = MediaQuery.of(context).size.width;
    double heightDevice = MediaQuery.of(context).size.height;
    double paddingTop = MediaQuery.of(context).padding.top;
    double paddingBottom = MediaQuery.of(context).padding.bottom;

    return Scaffold(
        body: Container(
      margin: EdgeInsets.only(top: paddingTop, bottom: paddingBottom),
      width: widthDevice * 0.5,
      height: heightDevice - paddingTop - paddingBottom,
      color: Colors.red,
    ));
  }
}
