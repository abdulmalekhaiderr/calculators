import 'package:flutter/material.dart';

class StateManagenemt1 with ChangeNotifier{

  String pex=" ";
  String histroy=" ";
  double num1=0.0;
  double num2=0.0;

String op='';
  void callback(String? text){
    if(text=="Ac")
     {
        pex=" ";
       histroy=" ";
        num1=0;
        num2=0;


     }
    else if(text=='+'||text=='-'||text=='x'||text=='%'||text=='/'){
      op=text!;
      num1=double.parse(pex);
      pex='';
      histroy=num1.toString();
     histroy+=text;

    }
else if(text=='.'){
  if(pex.contains(".")){
  }
  else{
    pex+=text!;
  }
    }
    else if(text=="="){
num2=double.parse(pex);
histroy+=pex!;
switch(op){
  case '+':
    {
      pex= (num1+num2).toString();

    }   break;
  case '-':
    {  pex= (num1-num2).toString();

    }
    break;
  case 'x':
    {
      pex= (num1*num2).toString();

    }
    break;
  case '%':
    {       pex= (num1 % num2).toString();
      print(pex);
    }

    break;
  case '/':
    {   num2==0?  pex="invalid  لايمكن القسمة ع الصفر":  pex= (num1 / num2).toString();

    }

    break;
  default:break;
}

    }
    else {
      pex+=text!;
    }

notifyListeners();

  }
}