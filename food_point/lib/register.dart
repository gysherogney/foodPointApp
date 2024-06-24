import 'package:flutter/material.dart';
import 'package:food_point/login.dart';

void main(){  

  runApp(myRegister());
}
class myRegister extends StatelessWidget{
  final username = TextEditingController();
   final password = TextEditingController();
    final email = TextEditingController();
    final confirmpassword = TextEditingController();
     final formkey = GlobalKey<FormState>();

     bool isVisible =false;



   @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
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
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(color: Colors.green),
                        color: Colors.white,
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
                        borderRadius: BorderRadius.circular(30.0),
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
                          hintText: 'Password',
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
                    Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        border: Border.all(color: Colors.green),
                        color: Colors.white,
                      ),
                      child: TextFormField(
                          validator:(value){
                                  if(value!.isEmpty){
                                    return "Email is required";
                                  }
                                  return null;
                        },
                        
                        decoration: InputDecoration(
                          icon: Icon(Icons.message,color: Colors.green,),
                          hintText: 'Email',
                          border: InputBorder.none,
                    
              
                        ),
                      ),
                    ),
              SizedBox(height: 10.0,),
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
                            
                        }
                      },
                       child:Text('Register',style:TextStyle(color: Colors.white,)),
                      ),
                   ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style: TextStyle(fontSize: 16,),),
                      TextButton(
                        onPressed: (){
                         Navigator.push(context , MaterialPageRoute(builder: (context)=>myLogin()));
                        }, 
                        child: Text('SIGN IN',style: TextStyle(color: Colors.green),),
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
  
  void setState(Null Function() param0) {}
}