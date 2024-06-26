import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hero"),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          onTap: () => Get.toNamed(Routes.PROFILE),
          child: Hero(
            tag: "tag1",
            child: ClipOval(
              child: Container(
                width: 50,
                height: 50,
                child: Image.network(
                  "https://picsum.photos/id/237/200/300",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
