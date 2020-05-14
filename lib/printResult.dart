import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required this.calcbmi,
    @required this.res,
    @required this.nature,
  }) : super(key: key);

  final double calcbmi;
  final String res;
  final String nature;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: res == 'NaN' || res == 'Infinity'
            ? Text(
                'No valid input given.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              )
            : Text(
                'Your BMI is $res \n \n $nature',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
      ),
    );
  }
}
