import 'package:flutter/material.dart';
import '../widget/widget.dart';

class SpeedGrid extends StatelessWidget {
  var animationState;
  final int numColumns;
  final int numRows;
  SpeedGrid(
      {super.key,
      required this.numColumns,
      required this.numRows,
      required this.animationState});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: numColumns,
        ),
        itemCount: numColumns * numRows,
        itemBuilder: (BuildContext context, int index) {
          return GridTile(
            child: AnimationSwitchWidget(
              child: AnimatedContainer(
                key: ValueKey<bool>(animationState),
                duration: const Duration(seconds: 4),
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: animationState
                        ? const Border(
                            right: BorderSide(color: Colors.black, width: 1.0),
                            bottom: BorderSide(color: Colors.black, width: 1.0),
                          )
                        : const Border(
                            right: BorderSide(color: Colors.black, width: 1.0),
                          )),
              ),
            ),
          );
        },
      ),
    );
    // });
  }
}
