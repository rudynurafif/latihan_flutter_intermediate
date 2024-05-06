import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lottie"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
            width: 300,
            height: 300,
            child:
                // Lottie.network(
                //     "https://lottie.host/6b07b090-5aab-4a53-940b-ead0c46a5e24/TEloZtMmFb.json"),
                Lottie.asset("assets/lottie/hello.json")),
      ),
    );
  }
}
