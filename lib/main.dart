import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'firstpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          accentColor: Colors.red[400],
          hintColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text('BMI CALCULATOR'),
            backgroundColor: Colors.red,
          ),
          body: BMI(),
        ),
      ),
    );
  }
}
