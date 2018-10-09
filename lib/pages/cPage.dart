import 'package:flutter/material.dart';
import 'dart:math';

class cPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() => new cPageState();
  
}

class cPageState extends State{
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  
}

class equations
{
  static double vFinal, vInitial, acceleration, deltaX;
  static void init()
  {
    vFinal = 0.0;
    vInitial = 0.0;
    acceleration = 0.0;
    deltaX = 0.0;
  }
  static double c1()=> sqrt((vInitial*vInitial)+2*acceleration*deltaX);
  static double c2()=> sqrt((vFinal*vFinal)+2*acceleration*deltaX);
  static double c3()=> ((vFinal*vFinal)-(vInitial*vInitial))/(2 * acceleration);
  static double c4()=> ((vFinal*vFinal)-(vInitial*vInitial))/(2*deltaX);
}