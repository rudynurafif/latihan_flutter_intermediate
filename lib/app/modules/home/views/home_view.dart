import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return context.isPortrait
        // MediaQuery.of(context).orientation == Orientation.portrait
        ? WidgetPotrait()
        : WidgetLandcape();
  }
}

class WidgetPotrait extends StatelessWidget {
  const WidgetPotrait({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Adaptive Widgets"),
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

class WidgetLandcape extends StatelessWidget {
  const WidgetLandcape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Adaptive Widgets"),
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
