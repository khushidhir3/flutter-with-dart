import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget{
  final String text;
  final VoidCallback onPressed;
  final Color color;
  final Color textColor;
  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color =Colors.pink,
    this.textColor=Colors.black12,
  });
  @override
  Widget build(BuildContext context){
    return ElevatedButton(
      style:ElevatedButton.styleFrom(
        backgroundColor: color,
        padding:const EdgeInsets.symmetric(horizontal:24,vertical:12),
        shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(8)),

      ),
      onPressed:onPressed,
      child:Text(
        text,
        style:TextStyle(fontSize:18,color:textColor),
      ),
    );
  }
}
