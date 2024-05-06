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
        appBar: AppBar(
          title: Text("Flexible"),
        ),
        body: Column(
          children: [
            Flexible(
                flex: 3,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.red,
                )),
            Flexible(
                flex: 2,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.amber,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  width: widthDevice * 0.5,
                  color: Colors.green,
                )),
          ],
        ));
  }
}
