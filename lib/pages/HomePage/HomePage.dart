import 'package:flutter/material.dart';
import 'HomeEqButton.dart';

class HomePage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => new HomePageState();
  
}

class HomePageState extends State
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Linux is better than apple"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            HomeEqButton(equationLetter: EquationLetter.A,),
            HomeEqButton(equationLetter: EquationLetter.B,),
            HomeEqButton(equationLetter: EquationLetter.C,),
            HomeEqButton(equationLetter: EquationLetter.D,),
          ],
        ),
      ),
    );
  }
  
}