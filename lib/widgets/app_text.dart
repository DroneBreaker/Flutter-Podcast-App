// ignore: file_names
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? color;
  final FontWeight? bold;
  final double size;

  const AppText(
      {super.key,
      required this.text,
      this.color,
      this.bold,
      required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,
        style: TextStyle(fontSize: size, fontWeight: bold, color: color),
      ),
    );
  }
}
