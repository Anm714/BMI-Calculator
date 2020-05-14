import 'package:flutter/material.dart';
import 'printResult.dart';

class ResultPage extends StatefulWidget {
  final double calcbmi;
  final String res;
  final String nature;
  ResultPage({this.calcbmi, this.res, this.nature});

  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('BMI CALCULATOR'),
        backgroundColor: Colors.red,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Result(
                  calcbmi: widget.calcbmi,
                  res: widget.res,
                  nature: widget.nature),
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              height: 60,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                'Re-Calculate',
                style: TextStyle(
                  fontFamily: 'DancingScript',
                  fontSize: 25,
                ),
              ),
              color: Colors.red,
              textColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
              onPressed: (() {
                Navigator.pop(context);
              }),
            ),
          ],
        ),
      ),
    );
  }
}
