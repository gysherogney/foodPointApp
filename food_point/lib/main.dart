import 'package:flutter/material.dart';
import 'package:food_point/login.dart';
void main(){
  runApp(Home());
  
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: myLogin(),
    );
  }
}