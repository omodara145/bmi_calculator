import 'package:flutter/material.dart';
import 'components/card.dart';
import 'components/constants.dart';

class ResultsPage extends StatelessWidget {
  final bmiCategory;
  final bmi;
  final bmiInterpretation;

  ResultsPage(
      {@required this.bmiCategory,
      @required this.bmi,
      @required this.bmiInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            fontFamily: 'Comfortaa',
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(10.0),
            child: Text(
              'Your Result',
              style: TextStyle(
                fontFamily: 'Comfortaa',
                fontSize: 24.0,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Expanded(
            child: AppCard(
              color: kActiveCardColour,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    bmiCategory.toUpperCase(),
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF24D876),
                    ),
                  ),
                  Text(
                    bmi,
                    style:
                        TextStyle(fontSize: 72.0, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    bmiInterpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontFamily: 'Comfortaa', fontSize: 18.0),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                margin: EdgeInsets.only(top: 10.0),
                padding: EdgeInsets.only(bottom: 15.0),
                width: double.infinity,
                height: kButtonHeight,
                color: kComplimentaryColour,
                child: Center(
                  child: Text(
                    'RE-CALCULATE',
                    style: TextStyle(
                      fontFamily: 'Comfortaa',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w900,
                      color: Colors.white,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
