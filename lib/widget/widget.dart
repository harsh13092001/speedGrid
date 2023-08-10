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

List<Color> speedGridContainerColor = [
  Colors.red.withOpacity(0.05),
  Colors.blue.withOpacity(0.05)
];
List<Color> startingColor = [
  Colors.black.withOpacity(0.01),
  Colors.white.withOpacity(0.02),
];

List<Color> endingColor = [
  Colors.red,
  Colors.yellow,
  Colors.green,
];

class AnimationSwitchWidget extends StatelessWidget {
  final Widget child;

  const AnimationSwitchWidget({required this.child});

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(duration: Duration(seconds: 4), child: child);
  }
}
