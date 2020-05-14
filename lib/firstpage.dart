import 'package:flutter/material.dart';
import 'dart:math';
import 'sizedbox.dart';
import 'secondpage.dart';

class BMI extends StatefulWidget {
  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  double calcbmi = 0.0;
  String res = '';
  String nature = '';
  final TextEditingController _weight = TextEditingController();
  final TextEditingController _height = TextEditingController();

  void _calculate() {
    calcbmi =
        double.parse(_weight.text) / pow((double.parse(_height.text) / 100), 2);
    res = calcbmi.toStringAsFixed(2);
    setState(() {
      if (calcbmi < 18.50) {
        nature = 'You are underweight. Eat more!!!';
      } else if (calcbmi < 25) {
        nature = 'Yayy! You are normal weight. Congratulations!!!';
      } else if (calcbmi < 30) {
        nature = 'You are overweight. Watch your diet. Do exercise!!!';
      } else {
        nature = 'You are obese. You must watch your diet and exercise!!!';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Sizedbox(),
              Center(
                child: Container(
                  child: Image.asset('images/bmi2.jpg'),
                ),
              ),
              Sizedbox(),
              Row(
                children: <Widget>[
                  Flexible(
                      child: TextField(
                    cursorColor: Colors.redAccent,
                    controller: _weight,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      labelText: 'Weight',
                      hintText: 'in kg',
                      //onChanged:()
                    ),
                    keyboardType: TextInputType.number,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Flexible(
                    child: TextField(
                      cursorColor: Colors.redAccent,
                      controller: _height,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: 'Height',
                        hintText: 'in cm',
                        //onChanged:()
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
              Sizedbox(),
              MaterialButton(
                height: 60,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    fontFamily: 'DancingScript',
                    fontSize: 25,
                  ),
                ),
                color: Colors.red,
                textColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                onPressed: (() {
                  _calculate();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage(
                                calcbmi: calcbmi,
                                res: res,
                                nature: nature,
                              )));
                }),
              ),
            ],
          ),
        ));
  }
}
