import 'package:flutter/material.dart';

class GridWidget extends StatelessWidget {
  final int numColumns;
  final int numRows;

  const GridWidget(
      {super.key, required this.numColumns, required this.numRows});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 34, 34),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(8)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.red.withOpacity(0.05),
                    Colors.blue.withOpacity(0.05)
                  ])),
          child: SizedBox(
            height: 400,
            width: 300,
            child: Column(
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
                Container(
                  height: 300,
                  width: 280,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      border: Border.all(
                        color: const Color.fromARGB(0, 22, 22, 22),
                        width: 5,
                      )),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: numRows,
                    ),
                    itemCount: numColumns * numRows,
                    itemBuilder: (BuildContext context, int index) {
                      return GridTile(
                          child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Container(
                          color: Colors.blue[100],
                        ),
                      ));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
