import 'package:bmi_calculator/components/reusable_card.dart';
import "package:flutter/material.dart";
import '../components/constants.dart';
import '../components/bottom_button.dart';

class ResultsPage extends StatelessWidget {
  final String imcResult;
  final String resultText;
  final String interpretation;

  ResultsPage({
    @required this.interpretation,
    @required this.imcResult,
    @required this.resultText,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text('Seu resultado', style: kTitleStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resultText,
                    style: kResultTextStyle,
                  ),
                  Text(
                   imcResult,
                    style: kImcStyle,
                  ),
                  Text(
                    interpretation,
                    style: kBodyStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              buttonTitle: 'Recalcular',
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}