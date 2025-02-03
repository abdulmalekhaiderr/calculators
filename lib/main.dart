import 'package:calculater/statemanagenemt.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'calculateerbottno.dart';
import 'calculater.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "تطبيق حاسوب",
      home: ChangeNotifierProvider<StateManagenemt1>(create:(_)=>StateManagenemt1(),
      child: Calculater(),),
    );
  }
}
/*
class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _expression = '';
  String _result = '';

  void _pressButton(String buttonText) {
    setState (() {
      if (buttonText == 'C') {
        _expression ='';
        _result ='';
      } else if (buttonText == '=') {
        try {
          _result = _calculate(_expression).toString();
        } catch (e) {
          _result = 'خطا';
        }
      } else {
        _expression += buttonText ;
      }
      });}

      double _calculate(String expression) {
        return expression as double;
      }
      @override
      Widget build(BuildContext context) {
        return
          Scaffold(
            appBar: AppBar(
                title: Text('تطبيق حاسوب')
            ),
            body: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                  children : [
                  Text(_expression, style: TextStyle(fontSize: 24,)),
              Text(_result, style: TextStyle(fontSize: 24,)),
              SizedBox(height: 20,),
              Row(
                children: [
                  CalculatorButton('7', _pressButton,),
                  CalculatorButton('8', _pressButton,),
                  CalculatorButton('9', _pressButton,),
                  CalculatorButton('/', _pressButton,),
                ],
              ),
              Row(
                children: [
                  CalculatorButton('4', _pressButton,),
                  CalculatorButton('5', _pressButton,),
                  CalculatorButton('6', _pressButton,),
                  CalculatorButton('*', _pressButton,),
                ],
              ),
              // (
              Row(
                children: [
                  CalculatorButton('1', _pressButton
                  ),
                  CalculatorButton('2', _pressButton
                  ),
                  CalculatorButton('3', _pressButton
                  ),
                  CalculatorButton('-', _pressButton
                  ),
                ],
              ),
              Row(
                  children: [
                    CalculatorButton('0', _pressButton
                    ),
                    CalculatorButton('.', _pressButton
                    ),
                    CalculatorButton('C', _pressButton
                    ),
                    CalculatorButton('+', _pressButton
                    ),
                  ]
              ),
              Row
                (
                children: [
                  Expanded
                    (
                    child: ElevatedButton(
                    onPressed: () => _pressButton(_expression ),
                    child: Text("="),),),
                    ],
                  ),
                ],
              ),
            ),
          );
      }
    }
        class CalculatorButton extends StatelessWidget {
        final String _text;
        final Function _onPressed;
        CalculatorButton(this._text, this._onPressed);
      @override
        Widget build(BuildContext context)
        {
        return Expanded(
        child: ElevatedButton(
        onPressed: () => _onPressed(_text),
        child: Text(_text),
        ));
        }
        }
        */
