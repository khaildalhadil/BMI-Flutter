import 'package:bmi/column_content.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/reusabie_card.dart';
import 'package:flutter/material.dart';

// enum ActiveName { Male, FEMALE }

// const currentActiveName = ActiveName.FEMALE;

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String cureentAcitve = "";
  int height = 180;
  int weight = 120;
  int age = 19;

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
                    child: ReusabieCard(
                      cureentAcitve == "MALE"
                          ? activeCardColor
                          : inactiveCardColor,
                      () {
                        changeActiveName("MALE");
                      },
                      ColumnContent("MALE", Icon(Icons.male, size: 100)),
                    ),
                  ),
                  Expanded(
                    child: ReusabieCard(
                      cureentAcitve == "FEMALE"
                          ? activeCardColor
                          : inactiveCardColor,
                      () {
                        changeActiveName("FEMALE");
                      },

                      ColumnContent("FEMALE", Icon(Icons.female, size: 100)),
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
                width: double.infinity,
                decoration: BoxDecoration(
                  color: activeCardColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("HEIGHT", style: textStyle),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(height.toString(), style: styleBoldNumber),
                        Text("cm", style: TextStyle()),
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 220.0,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (value) {
                        setState(() {
                          height = value.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
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
                    child: Container(
                      color: activeCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text("WEIGHT", style: textStyle),
                          Text(weight.toString(), style: styleBoldNumber),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 20.0,
                            children: [
                              RoundedBtn(Icons.add, () {
                                setState(() {
                                  weight += 1;
                                });
                              }),
                              RoundedBtn(Icons.remove, () {
                                setState(() {
                                  weight -= 1;
                                });
                              }),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: activeCardColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Text("AGE", style: textStyle),
                          Text(age.toString(), style: styleBoldNumber),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 20.0,
                            children: [
                              RoundedBtn(Icons.add, () {
                                setState(() {
                                  age += 1;
                                });
                              }),
                              RoundedBtn(Icons.remove, () {
                                setState(() {
                                  age -= 1;
                                });
                              }),
                            ],
                          ),
                        ],
                      ),
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

class RoundedBtn extends StatelessWidget {
  final IconData icon;
  final Function task;

  const RoundedBtn(this.icon, this.task);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: kBgIcon,
      shape: CircleBorder(),
      child: Icon(icon),
      onPressed: () => task(),
    );
  }
}
