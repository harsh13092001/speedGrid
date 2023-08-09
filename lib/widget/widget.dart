import 'package:flutter/material.dart';

TextStyle inputTextStyle() {
  return const TextStyle(color: Colors.grey);
}

InputDecoration textBoxDecoration(String hintText) {
  return InputDecoration(
    enabledBorder: const OutlineInputBorder(
      borderSide: BorderSide(width: 3, color: Colors.grey),
    ),
    hintText: hintText,
    hintStyle: inputTextStyle(),
  );
}
