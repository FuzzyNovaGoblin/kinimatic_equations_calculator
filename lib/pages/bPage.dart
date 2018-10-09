import 'package:flutter/material.dart';
import 'dart:math';

import 'package:kinematic_equations_calculator/pages/HomePage/HomeEqButton.dart';

class bPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => new bPageState();
  
}

class bPageState extends State{
  
  String equationText;
  TextField deltaXText, vInitialText, accelerationText, timeText;
  TextStyle feildTextStyle = new TextStyle(fontSize: 44.0,  color: Colors.black);
  TextEditingController
  deltaXTextControl = new TextEditingController(),
      vInitialTextControl = new TextEditingController(),
      accelerationTextControl = new TextEditingController(),
      timeTextControl = new TextEditingController();
  String time2;
  
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              new Padding(
                padding: EdgeInsets.symmetric(vertical: 60.0),
                child: Text(
                  equationText,
                  style: TextStyle(
                      fontSize: 44.0
                  ),
                ),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "A",
                      style: TextStyle(
                        fontSize: 44.0,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new ConstrainedBox(
                      child: accelerationText,
                      constraints: new BoxConstraints.tight(Size.square(100.0)),
                    ),
                  ),
                  new RaisedButton(
                    onPressed: (){
                      if(deltaXText.toString() != "" && vInitialText.toString() != "" && timeText.toString() != "")
                      {
                        setState(() {
                          accelerationTextControl.text = _equations.b3().toString();
                        });

                      }
                    },
                    child: Text(
                      "SOLVE",
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                  )
                ],),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Δ",
                      style: TextStyle(
                        fontSize: 44.0,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new ConstrainedBox(
                      child: deltaXText,
                      constraints: new BoxConstraints.tight(Size.square(100.0)),
                    ),
                  ),
                  new RaisedButton(
                    onPressed: (){
                      if(accelerationText.toString() != "" && vInitialText.toString() != "" && timeText.toString() != "")
                      {
                        setState(() {
                          deltaXTextControl.text = _equations.b1().toString();
                        });

                      }
                    },
                    child: Text(
                      "SOLVE",
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                  )
                ],),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "Vi",
                      style: TextStyle(
                        fontSize: 44.0,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new ConstrainedBox(
                      child: vInitialText,
                      constraints: new BoxConstraints.tight(Size.square(100.0)),
                    ),
                  ),
                  new RaisedButton(
                    onPressed: (){
                      if(deltaXText.toString() != "" && accelerationText.toString() != "" && timeText.toString() != "")
                      {
                        setState(() {
                          vInitialTextControl.text = _equations.b2().toString();
                        });

                      }
                    },
                    child: Text(
                      "SOLVE",
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                  )
                ],),
              new Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new Text(
                      "T",
                      style: TextStyle(
                        fontSize: 44.0,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new ConstrainedBox(
                      child: timeText,
                      constraints: new BoxConstraints.tight(Size.square(100.0)),
                    ),
                  ),
                  new RaisedButton(
                    onPressed: (){
                      if(deltaXText.toString() != "" && vInitialText.toString() != "" && accelerationText.toString() != "")
                      {
                        setState(() {
                          timeTextControl.text = _equations.b4a().toString();
                          time2 = _equations.b4b().toString();
                        });

                      }
                    },
                    child: Text(
                      "SOLVE",
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                  ),
                  new Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                        height: 10.0,
                        width: 10.0,
                        child: ListView(
                            children: <Widget>[Text(time2)]
                        )
                    ),
                  ),
                ],),
            ],
          ),
        ],
      ),
    );
  }



  @override
  void initState()
  {
    time2 = "na";
    equationText = HomeEqButton.getTextForEq(EquationLetter.A);
//    equationText = "equation";
  
    accelerationText = new TextField(
      controller: accelerationTextControl,
      keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
      onChanged: (text){
        setState(() {
          _equations.acceleration = double.parse(text);
        });
      },
      style: feildTextStyle,
    );
  
    timeText = new TextField(
      controller: timeTextControl,
      keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
      onChanged: (text){
        setState(() {
          _equations.time = double.parse(text);
        });
      },
      style: feildTextStyle,
    );
  
    vInitialText = new TextField(
      controller: vInitialTextControl,
      keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
      onChanged: (text){
        setState(() {
          _equations.vInitial = double.parse(text);
        });
      },
      style: feildTextStyle,
    );
  
    deltaXText = new TextField(
      controller: deltaXTextControl,
      keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
      onChanged: (text){
        setState(() {
          _equations.deltaX = double.parse(text);
        });
      },
      style: feildTextStyle,
    );
  
  }
  
}


class _equations
{
  static double deltaX, vInitial, acceleration, time;
  static void init()
  {
    deltaX = 0.0;
    vInitial = 0.0;
    acceleration = 0.0;
    time = 0.0;
  }
  static double b1()=> (vInitial * time) + (1/2) * acceleration * (time * time);
  static double b2()=> (deltaX/time) - (1/2) * acceleration * time;
  static double b3()=> (2 * (deltaX - (vInitial * time)))/(time * time);
  static double b4a()=> (-vInitial + sqrt((vInitial*vInitial) - 4*(1/2*acceleration)*(-deltaX)))/(2*(1/2*acceleration));
  static double b4b()=> (-vInitial - sqrt((vInitial*vInitial) - 4*(1/2*acceleration)*(-deltaX)))/(2*(1/2*acceleration));
}