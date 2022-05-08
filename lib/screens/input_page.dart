import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'results_page.dart';

import '../components/card_child_sex.dart';
import '../components/reusable_card.dart';
import '../components/constants.dart';
import '../components/bottom_button.dart';
import '../components/round_icon_button.dart';
import 'calculator_brain.dart';

enum Gender { male, female }

Gender selectedGender;
int altura = 180;
int peso = 60;
int idade = 40;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  // Color maleCardColor = inactiveCardColor;
  // Color femaleCardColor = inactiveCardColor;
  //
  // void updateColor(Gender genderType) {
  // if (genderType == Gender.male) {
  //   if (maleCardColor == inactiveCardColor){
  //     maleCardColor = activeCardColor;
  //     femaleCardColor = inactiveCardColor;
  //   } else {
  //     maleCardColor = inactiveCardColor;
  //   }
  // }
  // if (genderType == Gender.female) {
  //   if (femaleCardColor == inactiveCardColor){
  //     femaleCardColor = activeCardColor;
  //     maleCardColor = inactiveCardColor;
  //   } else {
  //     femaleCardColor = inactiveCardColor;
  //   }
  // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora IMC'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.male;
                      });
                    },
                    colour: selectedGender == Gender.male
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardChildWidgetSex(
                      iconSex: FontAwesomeIcons.mars,
                      genderSex: 'Masculino',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.female;
                      });
                    },
                    colour: selectedGender == Gender.female
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardChildWidgetSex(
                      iconSex: FontAwesomeIcons.venus,
                      genderSex: 'Feminino',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Altura',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        altura.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        ' cm',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: kSliderInactiveColor,
                      overlayColor: Color(0x29eb1555),
                      thumbColor: Color(0xffeb1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0,
                      ),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                    ),
                    child: Slider(
                      value: altura.toDouble(),
                      min: kAlturaMin,
                      max: kAlturaMax,
                      onChanged: (double newValue) {
                        setState(() {
                          altura = newValue.round();
                        });
                        print(newValue);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Peso',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          peso.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  peso--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  peso++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Idade',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          idade.toString(),
                          style: kNumberTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  idade--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  idade++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
              buttonTitle: 'Calcular',
              onTap: () {
                print(altura.toString());
                print(peso.toString());
                CalculatorBrain calc =
                    CalculatorBrain(altura: altura, peso: peso);
                 print(calc.calculateIMC());
                // print(calc.getResult());
                // print(calc.getInterpretation());
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      imcResult: calc.calculateIMC(),
                      resultText: calc.getResult(),
                      interpretation: calc.getInterpretation(),
                    ),
                  ),
                );
              }),
        ],
      ),
      // floatingActionButton: Theme(
      //   data: ThemeData(
      //     colorScheme: theme.colorScheme.copyWith(
      //       primary: Color(0xFF090c22),
      //       secondary: Colors.purple,
      //     ),
      //   ),
      //   child: FloatingActionButton(
      //     onPressed: () {},
      //     child: Icon(Icons.add),
      //   ),
      // ),
    );
  }
}