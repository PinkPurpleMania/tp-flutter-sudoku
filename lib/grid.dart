import 'package:flutter/material.dart';

class Grid extends StatelessWidget{
  const Grid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height / 2;
    var width = MediaQuery.of(context).size.width;
    var maxSize = height > width ? width : height;
    var boxSize = (maxSize / 3).ceil().toDouble();

    return SizedBox(
        width: boxSize * 3,
        height: boxSize * 3,
        child: GridView.count(
          crossAxisCount: 3,
          children: List.generate(9, (x) {
            return Container(
              width: 0.3,
              height: boxSize,
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            );
          })
          ,
        )
    );
  }
}