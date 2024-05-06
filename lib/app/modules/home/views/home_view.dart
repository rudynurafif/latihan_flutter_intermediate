import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                ),
                const Expanded(
                  child: ListTile(
                    tileColor: Colors.amber,
                    leading: Icon(Icons.title),
                    title: Text('Title'),
                  ),
                ),
                Container(
                  height: 50,
                  width: 50,
                  color: Colors.red,
                ),
              ],
            ),
            Container(
              height: heightBody * 0.5,
              width: widthDevice * 0.5,
              color: Colors.red,
            ),
            Container(
              height: heightBody * 0.2,
              width: widthDevice * 0.5,
              color: Colors.amber,
            ),
            Expanded(
              child: Container(
                width: widthDevice * 0.5,
                color: Colors.green,
              ),
            ),
          ],
        ));
  }
}
