import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'components/card.dart';
import 'components/icon_content.dart';
import 'components/constants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender gender;
  int height = 180;
  int weight = 60;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(fontFamily: 'Comfortaa'),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: AppCard(
                          color: gender == Gender.male
                              ? kActiveCardColour
                              : kInactiveCardColour,
                          child: IconContent(
                            icon: FontAwesomeIcons.mars,
                            label: 'MALE',
                          ),
                          gesture: () {
                            setState(() {
                              gender = Gender.male;
                            });
                          },
                        ),
                      ),
                      Expanded(
                        child: AppCard(
                          color: gender == Gender.female
                              ? kActiveCardColour
                              : kInactiveCardColour,
                          child: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'FEMALE',
                          ),
                          gesture: () {
                            setState(() {
                              gender = Gender.female;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: AppCard(
                          color: kActiveCardColour,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'HEIGHT',
                                style: kLabelTextStyle,
                              ),
                              SizedBox(height: 4.0),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.alphabetic,
                                children: <Widget>[
                                  Text(
                                    height.toString(),
                                    style: kFigureTextStyle,
                                  ),
                                  Text(
                                    'CM',
                                    style: TextStyle(fontSize: 18.0),
                                  )
                                ],
                              ),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                    activeTrackColor: Colors.white,
                                    inactiveTrackColor: Color(0xFF8D8E98),
                                    thumbColor: kComplimentaryColour,
                                    overlayColor: Color(0x29EB1555),
                                    thumbShape: RoundSliderThumbShape(
                                      enabledThumbRadius: 11.0,
                                    ),
                                    overlayShape: RoundSliderOverlayShape(
                                      overlayRadius: 26.0,
                                    )),
                                child: Slider(
                                  value: height.toDouble(),
                                  min: 120.0,
                                  max: 220.0,
                                  onChanged: (double newHeight) {
                                    setState(() {
                                      height = newHeight.round();
                                    });
                                  },
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: AppCard(
                          color: kActiveCardColour,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'HEIGHT',
                                style: kLabelTextStyle,
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                weight.toString(),
                                style: kFigureTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CustomCircularButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 8.0),
                                  CustomCircularButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: AppCard(
                          color: kActiveCardColour,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'AGE',
                                style: kLabelTextStyle,
                              ),
                              SizedBox(height: 4.0),
                              Text(
                                age.toString(),
                                style: kFigureTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  CustomCircularButton(
                                    icon: FontAwesomeIcons.minus,
                                    onPressed: () {
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 8.0),
                                  CustomCircularButton(
                                    icon: FontAwesomeIcons.plus,
                                    onPressed: () {
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kButtonHeight,
            color: kComplimentaryColour,
          )
        ],
      ),
    );
  }
}

class CustomCircularButton extends StatelessWidget {
  final buttonSize = 45.0;
  final IconData icon;
  final Function onPressed;

  CustomCircularButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      fillColor: Color(
        0xFF4C4F5E,
      ),
      constraints: BoxConstraints.tightFor(
        width: buttonSize,
        height: buttonSize,
      ),
      shape: CircleBorder(),
      child: Icon(
        icon,
        size: 18.0,
      ),
    );
  }
}
