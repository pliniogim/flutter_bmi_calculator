import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CalculatorBrain {
  CalculatorBrain({this.altura, this.peso});

  final int altura;
  final int peso;
  double _imc;

  String calculateIMC() {
    _imc = peso / pow(altura/100, 2);
    return _imc.toStringAsFixed(1);
  }
  String getResult(){
    if (_imc >= 25) {
      return 'Peso acima do ideal';
    } else if (_imc > 18.5 ) {
      return 'Normal';
    } else {
      return 'Peso abaixo do ideal';
    }
  }

  String getInterpretation() {
    if (_imc >= 25) {
      return 'Você tem um peso acima do normal. Tente se exercitar mais.';
    } else if (_imc > 18.5 ) {
      return 'Você tem o peso normal esperado. Bom trabalho!';
    } else {
      return 'Você tem um peso abaixo do ideal. Você precisa se alimentar mais.';
    }
  }
}