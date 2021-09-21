import 'package:flutter/material.dart';
import 'package:flutter_exercise_2/screen/home_page.dart';
import 'package:get/get.dart';
import 'package:flutter_exercise_2/screen/widgets/custom_container.dart';
import 'package:flutter_exercise_2/screen/widgets/design1_widget.dart';
import 'package:flutter_exercise_2/screen/widgets/design2_widget.dart';
import 'package:flutter_exercise_2/screen/widgets/design3_widget.dart';
import 'package:flutter_exercise_2/screen/widgets/design4_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Activities",
      home: Designs(),
    );
  }
}

class Designs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Activities")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(HomePage());
              },
              child: Text("Go to Home Page"),
            ),
          ],
        ),
      ),
    );
  }

  void design1(BuildContext context) {
    var alert = Dialog(
      child: CustomContainer(height: 450, widget: Design1()),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  void design2(BuildContext context) {
    var alert = Dialog(
      child: CustomContainer(height: 240, widget: Design2()),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  void design3(BuildContext context) {
    var alert = Dialog(
      child: CustomContainer(height: 580, widget: Design3()),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  void design4(BuildContext context) {
    var alert = Dialog(
      child: CustomContainer(height: 500, widget: Design4()),
    );

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }
}
