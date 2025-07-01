import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());  
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(title:'You can do it-Productivity App',theme:ThemeData(
      primarySwatch:Colors.pink,
    ),
    home:StartScreen(),
    debugShowCheckedModeBanner:false,
    );
  }
  
}
class StartScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold( backgroundColor: Colors.pink[30],
    body:Center(
      child:Column(mainAxisAlignment:MainAxisAlignment.center,
      children: [Text(
        'You can do it - Productivity App',
        style:TextStyle( 
          fontSize:30,
          fontWeight: FontWeight.bold,
          color:Colors.pink,

        ),
      ),
      SizedBox(height:30),
      Text(
        'Made by Khushi',
        style:TextStyle(fontSize:30),
        ),
        SizedBox(height:10),
        Text(
          '"Be sure you put your feet in the right place, then stand firm.”',
          style:TextStyle(fontSize:18,fontStyle: FontStyle.italic),
          textAlign:TextAlign.center,
        ),
        SizedBox(height:30),
        ElevatedButton(onPressed:(){
          Navigator.push(
            context,
            MaterialPageRoute(builder:(context) => CounterPage()),
          );
        },
        child:Text('Lets Start'),
        ),
        ],
        ),
      ),
      );
  }

}
class CounterPage extends StatefulWidget{
  @override
  _CounterPageState createState()=>_CounterPageState();
}
class _CounterPageState extends State<CounterPage>{
  int count=0;
  void increase(){
    setState(() {
      count=count+1;
    });
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:Text('Counter'),

    ),
    body:Center(
      child:Text(
        'Count:$count',
        style:TextStyle(fontSize:30),
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:increase,
          child:Icon(Icons.add),
          tooltip:'Increase',
          backgroundColor: Colors.pink,
          ),
    );
  }

}
