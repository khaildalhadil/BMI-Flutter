import 'package:bmi/column_content.dart';
import 'package:bmi/reusabie_card.dart';
import 'package:flutter/material.dart';

const inactiveCardColor = Color(0xFF111328);
const activeCardColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String cureentAcitve = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 200,
              child: Row(
                spacing: 10.0,
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: ReusabieCard(
                        cureentAcitve == "MALE"
                            ? activeCardColor
                            : inactiveCardColor,
                        ColumnContent("MALE", Icon(Icons.male, size: 100)),
                      ),
                      onTap: () {
                        changeActiveName("MALE");
                      },
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: ReusabieCard(
                        cureentAcitve == "FEMALE"
                            ? activeCardColor
                            : inactiveCardColor,
                        ColumnContent("FEMALE", Icon(Icons.female, size: 100)),
                      ),
                      onTap: () {
                        changeActiveName("FEMALE");
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Container(
                margin: EdgeInsets.all(10.0),
                height: 200,
                decoration: BoxDecoration(
                  color: cureentAcitve == "m"
                      ? activeCardColor
                      : inactiveCardColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              onTap: () => changeActiveName("m"),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              height: 200,
              child: Row(
                spacing: 10.0,
                children: [
                  Expanded(
                    child: GestureDetector(
                      child: ReusabieCard(
                        cureentAcitve == "br"
                            ? activeCardColor
                            : inactiveCardColor,
                      ),
                      onTap: () => changeActiveName("br"),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      child: ReusabieCard(
                        cureentAcitve == "bl"
                            ? activeCardColor
                            : inactiveCardColor,
                      ),
                      onTap: () => changeActiveName("bl"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Color(0xFFEB1555),
            // height: 70,
            width: double.infinity,
            padding: EdgeInsets.all(17.0),
            margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Center(
              child: Text(" BMI أحسب", style: TextStyle(fontSize: 26)),
            ),
          ),
        ],
      ),
    );
  }

  void changeActiveName(String name) {
    setState(() {
      cureentAcitve = name;
    });
  }
}
