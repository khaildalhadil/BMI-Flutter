import 'package:flutter/material.dart';

class ReusabieCard extends StatelessWidget {
  final Color color;
  final Widget? cardChild;
  final Function onPress;
  

  const ReusabieCard(this.color, this.onPress ,[this.cardChild]);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
      onTap: () => onPress(),
    );
  }


}
