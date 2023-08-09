import 'package:flutter/material.dart';
import 'package:tooltipproject/views/matrix.dart';

import '../widget/widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final rowController = TextEditingController();
  final columnController = TextEditingController();
  void onPressed() {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => GridWidget(
                  numColumns: int.parse(rowController.text),
                  numRows: int.parse(columnController.text),
                )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(16)),
              border: Border.all(
                color: Colors.grey,
                width: 5,
              )),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextField(
                  style: inputTextStyle(),
                  decoration: textBoxDecoration("Enter a Number of rows"),
                  controller: rowController,
                ),
                TextField(
                  style: inputTextStyle(),
                  decoration: textBoxDecoration("Enter a Number of columns"),
                  controller: columnController,
                ),
                ElevatedButton(
                    onPressed: onPressed, child: const Text("submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
