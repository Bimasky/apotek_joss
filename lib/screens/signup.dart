

import 'package:flutter/material.dart';
class SignUp  extends StatefulWidget {
 

  @override
  State<SignUp> createState() => _SignUpState();
}

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea (
        child: Container(
         child: Column(
           children: <Widget> [
             Container(
               height:250, 
               width: double.infinity,
               color: Colors.white,
               child: Column(
                 children: <Widget> [
                   Text("Register",style: TextStyle(
                     fontSize: 50,
                     fontWeight: FontWeight.bold,

                   ),
                   ),
                 ],
                 ),
               ),
               SizedBox(
                 width: 20,
               ),
               Container(
                 height: 350,
                 margin: EdgeInsets.symmetric(horizontal:10),
                 width:double.infinity,
                 //color: Colors.lightBlue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget> [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Username",
                        
                        hintStyle: TextStyle( color: Colors.black), 

                        border: OutlineInputBorder(

                        )
                      ),
                    ),
                    ///fdfdf
                  TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        
                        hintStyle: TextStyle( color: Colors.black), 

                        border: OutlineInputBorder(

                        )
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        
                      
                       suffixIcon: GestureDetector(
                          onTap: (){
                            FocusScope.of(context).unfocus();

                          },
                          child:Icon(Icons.visibility,color: Colors.black,)
                        ),
                        border: OutlineInputBorder(

                        )
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Telefone",
                        icon :Icon(Icons.phone),
                       
                        hintStyle: TextStyle( color: Colors.black), 

                        border: OutlineInputBorder(

                        )
                      ),
                    ),
                    Container(
                      height: 45,
                      width:double.infinity,
                      child: RaisedButton(
                        child:Text("Register"),
                        color : Colors.blueGrey[400] ,onPressed: (){}),
                    ),
                    Row(
                      children:<Widget>[
                        Text("sudah punya akun"),
                        SizedBox(width: 10,),
                        GestureDetector(child: Text("Login",style: TextStyle(color: Colors.cyan,fontSize:20,fontWeight:FontWeight.bold)),)
                      ],
                    )
                  ],
                )
               )
           ],
      ), 
      ),
      ),
    );
  }
}


