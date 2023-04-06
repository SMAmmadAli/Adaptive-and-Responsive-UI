import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Adaptive UI Example"),
      ),
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 600) {
          return threeBox();
        } else if (constraints.maxWidth > 400) {
          return twoBox();
        } else {
          return oneBox();
        }
      }),
    );
  }
}

Widget oneBox() {
  return Container(
    color: Colors.pinkAccent,
    alignment: Alignment.center,
    width: double.infinity,
    height: 300.0,
    child: Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: AspectRatio(
        aspectRatio: 16 / 4,
        child: Container(
          color: Colors.purple,
        ),
      ),
    ),
  );
}

Widget twoBox() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 80,
        height: 100,
        color: Colors.deepPurple,
      ),
      Container(
        width: 80,
        height: 100,
        color: Colors.purpleAccent,
      )
    ],
  );
}

Widget threeBox() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Container(
        width: 80,
        height: 100,
        color: Colors.deepPurple,
      ),
      Container(
        width: 80,
        height: 100,
        color: Colors.deepPurple,
      ),
      Container(
        width: 80,
        height: 100,
        color: Colors.purpleAccent,
      )
    ],
  );
}
