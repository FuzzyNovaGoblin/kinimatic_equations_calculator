import 'package:flutter/material.dart';
import 'package:kinematic_equations_calculator/pages/aPage.dart';
import 'package:kinematic_equations_calculator/pages/bPage.dart';
import 'package:kinematic_equations_calculator/pages/cPage.dart';
import 'package:kinematic_equations_calculator/pages/dPage.dart';

class HomeEqButton extends StatelessWidget
{
  final EquationLetter equationLetter;
  
  const HomeEqButton({this.equationLetter});
  
  @override
  Widget build(BuildContext context)
  {
    return new RaisedButton(
      onPressed: ()=>getNavEq(equationLetter, context),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Text(getTextForEq(equationLetter),
          style: TextStyle(
              fontSize: 24.0
          ),),
      ),
    );
  }
  
  void getNavEq(EquationLetter el, BuildContext context)
  {
    switch (el)
    {
      case EquationLetter.A:
        Navigator.push(context,
        MaterialPageRoute(builder: (context) => aPage()));
        break;
      case EquationLetter.B:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => bPage()));
        break;
      case EquationLetter.C:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => cPage()));
        break;
      case EquationLetter.D:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => dPage()));
        break;
    }
  }
  
  
  static String getTextForEq(EquationLetter el)
  {
    switch (el)
    {
      case EquationLetter.A:
        return "Vf = Vi + A T";
      case EquationLetter.B:
        return "Δ = Vi T + 1/2 A T^2";
      case EquationLetter.C:
        return "Vf^2 = Vi^2 + 2A Δ";
      case EquationLetter.D:
        return "Δ = (Vi + Vf)/2 * T";
      default:
        return "";
    }
  }
}

enum EquationLetter
{
  A, B, C, D
}