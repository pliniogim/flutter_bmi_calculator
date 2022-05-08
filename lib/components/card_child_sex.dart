import 'package:flutter/material.dart';
import 'constants.dart';

class CardChildWidgetSex extends StatelessWidget {


  // const CardChildWidgetSex({
  //   Key key,
  // }) : super(key: key);
  CardChildWidgetSex({this.iconSex, this.genderSex});

  final IconData iconSex;
  final String genderSex;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconSex,
          size: 80.0,
        ),
        SizedBox(height: 15.0),
        Text(
          '$genderSex',
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}