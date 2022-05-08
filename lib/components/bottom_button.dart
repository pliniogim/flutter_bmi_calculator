import 'package:flutter/material.dart';
import 'constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({@required this.buttonTitle, @required this.onTap});

  // const BottomButton({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Center(
          child: Text(
            buttonTitle,
            style: kTitleStyle,
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}