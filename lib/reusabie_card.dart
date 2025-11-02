import 'package:flutter/material.dart';

class ReusabieCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;

  const ReusabieCard(this.color, [this.cardChild]);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}
