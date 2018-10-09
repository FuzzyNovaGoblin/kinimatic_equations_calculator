import 'package:flutter/material.dart';

class dPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => new dPageState();
  
}

class dPageState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  
}


class equations
{
  static double vFinal, vInitial, deltaX, time;
  static void init()
  {
    vFinal = 0.0;
    vInitial = 0.0;
    deltaX = 0.0;
    time = 0.0;
  }
  static double d1()=> ((vInitial+vFinal)/2)*time;
  static double d2()=> deltaX / ((vInitial+vFinal)/2);
  static double d3()=> (2*(deltaX/time))-vInitial;
  static double d4()=> (2*(deltaX/time))-vFinal;
}