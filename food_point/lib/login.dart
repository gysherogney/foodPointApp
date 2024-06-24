import 'package:flutter/material.dart';
import 'package:food_point/register.dart';
import 'package:food_point/myView.dart';

void main(){
  runApp(myLogin());
}

class myLogin extends StatefulWidget{
  @override
  State<myLogin> createState() => _myLoginState();
}

class _myLoginState extends State<myLogin> {
  final username = TextEditingController();

  final password = TextEditingController();

  bool isVisible =false;

  final formkey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/logo3.png',
                      width: 200,
                    ),
                    SizedBox(height: 5.0,),
                    Text("Welcome To Food point",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height:5.0),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.green),
                        color: Colors.white
                      ),
                      child: TextFormField(
                        validator:(value){
                                  if(value!.isEmpty){
                                    return "Username is required";
                                  }
                                  return null;
                        },
                        decoration: InputDecoration(
                          icon: Icon(Icons.person,color: Colors.green,),
                          hintText: 'Username',
                          border: InputBorder.none,
              
                        ),
                      ),
                    ),
                    
                     Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        border: Border.all(color: Colors.green),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                          validator:(value){
                                  if(value!.isEmpty){
                                    return "Password is required";
                                  }
                                  return null;
                        },
                        obscureText: !isVisible,
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock,color: Colors.green,),
                          hintText: 'Password,',
                          border: InputBorder.none,
                          suffixIcon: IconButton(
                            onPressed: (){
                               setState((){
                                isVisible = !isVisible;
                               
                            });
                
                            },
                            icon: Icon(isVisible? Icons.visibility:Icons.visibility_off,color: Colors.green,),
                          
                          )
             
                        ),
                      ),
                    ),
              SizedBox(height: 10.0,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                        Text("Forgot password?",style: TextStyle(fontWeight: FontWeight.bold,decoration: TextDecoration.underline),),
                  ],
                ),
              ),

             
              SizedBox(height: 15.0,),
                   Container(
                    height: 40,
                    width: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black,
                      
              
                    ),
                     child: 
                     TextButton(
                      onPressed: (){ 
                        if(formkey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>MyView()));
                        }
                      },
                      
                       child:Text('login',style:TextStyle(color: Colors.white,)),
                      ),
                   ),
                   SizedBox(height: 15.0,),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account?",style: TextStyle(fontSize: 16),),
                      TextButton(
                        onPressed: (){
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>myRegister()));
                        }, 
                        child: Text('REGISTER HERE',style: TextStyle(color: Colors.green),)
                        )
              
              
                    ],
                   )
              
                  ],
                ),
              ),
            ),
          ),
      )
    );
  }
}