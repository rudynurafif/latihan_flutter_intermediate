import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double widthDevice = Get.width;
    double heightDevice = Get.height;
    double paddingTop = context.mediaQueryPadding.top;
    double paddingBottom = context.mediaQueryPadding.bottom;

    // double widthDevice = MediaQuery.of(context).size.width;
    // double heightDevice = MediaQuery.of(context).size.height;
    // double paddingTop = MediaQuery.of(context).padding.top;
    // double paddingBottom = MediaQuery.of(context).padding.bottom;

    AppBar myAppBar() {
      return AppBar(
        title: const Text("Responsive Widgets"),
        centerTitle: true,
      );
    }

    double heightBody = heightDevice - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
        appBar: myAppBar(),
        body: Container(
          width: Get.width,
        ));
  }
}
