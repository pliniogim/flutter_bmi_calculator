import 'package:flutter/material.dart';

import 'reusable_card.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(colour: Color(0xff1d1e33)),
                ),
                Expanded(
                  child: ReusableCard(colour: Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(colour: Color(0xff1d1e33)),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(colour: Color(0xff1d1e33)),
                ),
                Expanded(
                  child:ReusableCard(colour: Color(0xff1d1e33)),
                ),
              ],
            ),
          ),
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