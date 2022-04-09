import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({Key? key, required this.colour, required this.circularIcon,}) : super(key: key);
  final Color colour;
  final IconData circularIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(50.0)
      ),
      child: Icon(
        circularIcon,
        color: Colors.white,
      ),
    );
  }
}