
import 'package:flutter/material.dart';

class TextRow extends StatelessWidget {
  TextRow({super.key, required this.text});
  String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
