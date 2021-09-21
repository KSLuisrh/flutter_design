import 'package:flutter/material.dart';
import 'package:flutter_exercise_2/screen/home_page.dart';
import 'package:get/get.dart';

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
}
