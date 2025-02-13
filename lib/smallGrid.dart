import 'package:flutter/material.dart';
import 'package:sudoku_api/sudoku_api.dart';

class SmallGrid extends StatelessWidget{
  const SmallGrid({Key? key, required this.gridValues}) : super(key: key);

  final List<int> gridValues;

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
              child:  Center(
                  child: Text(
                    gridValues[x] != 0 ? gridValues[x].toString() : ''
                  )
              )
              ,
            );
          })
          ,
        )
    );
  }
}