import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetPlatform.isAndroid ? const Android() : const iOS();
  }
}

class Android extends StatelessWidget {
  const Android({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Android Display"),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          height: 300,
          width: 300,
          color: Colors.amber,
        )));
  }
}

// ignore: camel_case_types
class iOS extends StatelessWidget {
  const iOS({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("iOS Display"),
          centerTitle: true,
        ),
        body: Center(
            child: Container(
          height: 150,
          width: 300,
          color: Colors.red,
        )));
  }
}
