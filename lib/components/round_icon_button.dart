import 'package:flutter/material.dart';


//creating a widget from scratch
class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 0.0,
      onPressed: onPressed,
      fillColor: Color(0xFF4c4f5e),
      shape: CircleBorder(),
    );
  }
}