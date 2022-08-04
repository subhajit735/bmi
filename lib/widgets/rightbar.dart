import 'package:flutter/material.dart';
import 'package:bmi/constant/constant.dart';

class rightbar extends StatelessWidget {
  final double barwidth;
  const rightbar({Key? key, required this.barwidth}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: 25,
          width: barwidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
