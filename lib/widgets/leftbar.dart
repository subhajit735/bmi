import 'package:flutter/material.dart';
import 'package:bmi/constant/constant.dart';

class leftbar extends StatelessWidget {
  final double barwidth;
  const leftbar({Key? key, required this.barwidth}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barwidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: Colors.yellow,
          ),
        ),
      ],
    );
  }
}
