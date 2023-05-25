import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final Color? bgColor;
  final double? containerWidth;
  final String text;

  const ContainerButton({
    Key? key,
    required this.containerWidth,
    this.bgColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: containerWidth,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bgColor,
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white70,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
