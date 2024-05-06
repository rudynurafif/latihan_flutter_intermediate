import 'package:flutter/material.dart';

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
        body: Container(
          width: Get.width * 0.5,
          height: Get.height * 0.3,
          color: Colors.amber,
          child: LayoutBuilder(
            builder: (context, constraints) {
              double lebarParent = constraints.maxWidth;
              double tinggiParent = constraints.maxHeight;
              return Stack(
                children: [
                  Container(
                    width: lebarParent * 0.3,
                    height: tinggiParent,
                    color: Colors.red,
                  )
                ],
              );
            },
          ),
        ));
  }
}
