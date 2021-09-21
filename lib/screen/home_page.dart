import 'package:flutter/material.dart';
import 'package:flutter_exercise_2/screen/widgets/custom_container.dart';
import 'package:flutter_exercise_2/screen/widgets/design2_widget.dart';
import 'package:flutter_exercise_2/screen/widgets/design3_widget.dart';
import 'package:flutter_exercise_2/screen/widgets/design4_widget.dart';

import 'widgets/design1_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          CustomContainer(height: 450, widget: Design1()),
          Divider(
            thickness: 4,
          ),
          CustomContainer(height: 240, widget: Design2()),
          Divider(
            thickness: 4,
          ),
          CustomContainer(height: 580, widget: Design3()),
          Divider(
            thickness: 4,
          ),
          CustomContainer(height: 500, widget: Design4())
        ],
      )),
    );
  }
}
