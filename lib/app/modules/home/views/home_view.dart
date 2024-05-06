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

    AppBar myAppBar() {
      return AppBar(
        title: const Text("Responsive Widgets"),
        centerTitle: true,
      );
    }

    double heightBody = heightDevice - myAppBar().preferredSize.height - paddingTop;

    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 150,
              minHeight: 100,
              maxWidth: 200,
              minWidth: 150,
            ),
            child: Container(
              // width: 150,
              // height: 150,
              color: Colors.red,
              child: const Text(
                "Text asdasdsa adasdasd qweqeqewqwe zxczxczxc",
                // overflow: TextOverflow.ellipsis,
                // maxLines: 2,
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
          )
        ],
      ),
    );
  }
}
