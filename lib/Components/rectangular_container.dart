import 'package:flutter/material.dart';

class RectangularContainer extends StatelessWidget {
  const RectangularContainer({Key? key,   this.cardChild,}) : super(key: key);
  final Widget ?cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(12.0),
      height: 200,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: Colors.blueGrey,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 6,
            blurRadius: 7,
            offset: Offset(1, 3),
          ),
        ],
      ),
    );
  }
}