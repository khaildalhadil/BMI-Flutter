import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class ColumnContent extends StatelessWidget {
  final String text;
  final Icon icon;

  const ColumnContent(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icon,
        Text(text, style: textStyle),
      ],
    );
  }
}
