// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tooltipproject/views/grid.dart';

import '../bloc/gridAnimationBloc.dart';
import '../widget/widget.dart';

class GridWidget extends StatelessWidget {
  final int numColumns;
  final int numRows;

  const GridWidget(
      {super.key, required this.numColumns, required this.numRows});

  Widget build(BuildContext context) {
    final animationBloc = BlocProvider.of<AnimationBloc>(context);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 34, 34),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: speedGridContainerColor)),
              child: SizedBox(
                height: 400,
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Plastic Rackets",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color.fromARGB(122, 159, 155, 155)),
                            ),
                            Text(
                              "Karthikeyan",
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color.fromARGB(249, 218, 215, 215)),
                            ),
                          ],
                        ),
                        Text(
                          "Skip/Reset",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color.fromARGB(88, 218, 215, 215)),
                        ),
                      ],
                    ),
                    const Divider(
                      color: Colors.grey,
                      thickness: 1,
                      indent: 20,
                      endIndent: 20,
                    ),
                    BlocBuilder<AnimationBloc, bool>(
                        builder: (context, animationState) {
                      return AnimationSwitchWidget(
                        child: AnimatedContainer(
                          height: 250,
                          width: 280,
                          key: ValueKey<bool>(animationState),
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: animationState
                                    ? endingColor
                                    : startingColor),
                          ),
                          duration: const Duration(seconds: 4),
                          child: SpeedGrid(
                            numColumns: numColumns,
                            numRows: numRows,
                            animationState: animationState,
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                onTap: () {
                  animationBloc.add(AnimationEvent.startAnimation);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20.0),
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.05),
                          Colors.white.withOpacity(0.05),
                        ]),
                  ),
                  child: const Center(
                      child: Text(
                    "Change",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
