import 'package:bmi/constants.dart';
import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  Screen1(this.result);
  String result;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: inactiveCardColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Center(
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: activeCardColor,
                borderRadius: BorderRadiusGeometry.all(Radius.circular(10.0)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "OVERWEIGHT",
                    style: TextStyle(
                      color: const Color.fromARGB(255, 129, 221, 132),
                      fontSize: 24,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Text(
                    result.toString(),
                    style: TextStyle(
                      fontSize: 100,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Message Here",
                    style: TextStyle(
                      fontSize: 24,
                      decoration: TextDecoration.none,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Color(0xFFEB1555),
              child: TextButton(
                child: Text(
                  "RE-CALCULATE",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
