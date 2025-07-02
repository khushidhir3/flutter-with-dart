import 'package:flutter/material.dart';
void main()=>runApp(CalculatorApp());
class CalculatorApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp( 
      title:'Simple Calculator',
      home:CalculatorScreen(),
      debugShowCheckedModeBanner:false,
      );
  }
}
class CalculatorScreen extends StatefulWidget{
  @override
  _CalculatorState createState()=>_CalculatorState();
}
class _CalculatorState extends State<CalculatorScreen>{
  final TextEditingController _num1Controller=TextEditingController();
  final TextEditingController _num2Controller=TextEditingController();
  double? result;
  void calculate(String operator){
    double num1=double.tryParse(_num1Controller.text)??0;
     double num2=double.tryParse(_num2Controller.text)??0;
     setState((){
      switch(operator){
        case'+':
        result=num1+num2;
        break;
         case '-':
          result = num1 - num2;
          break;
        case '×':
          result = num1 * num2;
          break;
        case '÷':
          result = num2 != 0 ? num1 / num2 : double.nan;
          break;
      

      }
     });
  }
  @override
Widget build(BuildContext context){
  return Scaffold(
    appBar:AppBar(title:Text('Simple Calculator')),
    body:Padding(padding:const EdgeInsets.all(18.0),
    child:Column(
      children: [
        TextField(controller:_num1Controller,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(labelText:'Enter first number'),
        ),
        TextField(
          controller: _num2Controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: 'Enter second number'),
          ),
          SizedBox(height:30),
          Wrap(
            spacing:10,
            children: [
               ElevatedButton(onPressed:() => calculate('+'),child:Text('+')),
                ElevatedButton(onPressed:() => calculate('-'),child:Text('-')),
                ElevatedButton(onPressed:() => calculate('×'),child:Text('×')),
                ElevatedButton(onPressed:() => calculate('÷'),child:Text('÷')),
            ],
          ),
          SizedBox(height:30),
          Text(result!=null?'Result:$result':'Enter numbers and select operation',
          style:TextStyle(fontSize:20),
          ),
      ],
  ),
    ),


  );
      
}
}