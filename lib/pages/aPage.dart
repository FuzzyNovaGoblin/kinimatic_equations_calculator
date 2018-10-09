import 'package:flutter/material.dart';
import 'HomePage/HomeEqButton.dart';

class aPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => new aPageState();
  
}

class aPageState extends State{
  
  String equationText;
  TextField vFinalText, vInitialText, accelerationText, timeText;
  TextStyle feildTextStyle = new TextStyle(fontSize: 44.0,  color: Colors.black);
  TextEditingController
      vFinalTextControl = new TextEditingController(),
      vInitialTextControl = new TextEditingController(),
      accelerationTextControl = new TextEditingController(),
      timeTextControl = new TextEditingController();
  
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
                      if(vFinalText.toString() != "" && vInitialText.toString() != "" && timeText.toString() != "")
                      {
                        setState(() {
                          accelerationTextControl.text = _equations.a4().toString();
//                        print("ontap");
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
                      "Vf",
                      style: TextStyle(
                        fontSize: 44.0,
                      ),
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: new ConstrainedBox(
                      child: vFinalText,
                      constraints: new BoxConstraints.tight(Size.square(100.0)),
                    ),
                  ),
                  new RaisedButton(
                    onPressed: (){
                      if(accelerationText.toString() != "" && vInitialText.toString() != "" && timeText.toString() != "")
                      {
                        setState(() {
                          vFinalTextControl.text = _equations.a1().toString();
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
                      if(vFinalText.toString() != "" && accelerationText.toString() != "" && timeText.toString() != "")
                      {
                        setState(() {
                          vInitialTextControl.text = _equations.a2().toString();
//                        print("ontap");
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
                      if(vFinalText.toString() != "" && vInitialText.toString() != "" && accelerationText.toString() != "")
                      {
                        setState(() {
                          timeTextControl.text = _equations.a3().toString();
//                        print("ontap");
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
            ],
          ),
        ],
      ),
    );
  }

  @override
  void initState()
  {
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
  
    vFinalText = new TextField(
      controller: vFinalTextControl,
      keyboardType: TextInputType.numberWithOptions(decimal: true, signed: true),
      onChanged: (text){
        setState(() {
          _equations.vFinal = double.parse(text);
        });
      },
      style: feildTextStyle,
    );
  
  }
  
}

class _equations
{
  static double vFinal, vInitial, acceleration, time;
  static void init()
  {
    vFinal = 0.0;
    vInitial = 0.0;
    acceleration = 0.0;
    time = 0.0;
  }
  static double a1(){
    vFinal = vInitial + (acceleration * time);
    return vFinal;
  }
  
  static double a2(){
    vInitial = vFinal - (acceleration * time);
    return vInitial;
  }
  
  static double a3(){
    time = (vFinal-vInitial)/acceleration;
    return time;
  }
  
  static double a4(){
    acceleration = (vFinal-vInitial)/time;
    return acceleration;
  }
}