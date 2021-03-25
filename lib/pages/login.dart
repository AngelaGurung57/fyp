import 'dart:math';
import 'package:flutter/material.dart';
import 'package:padhne_sathi/pages/dashboard.dart';
import 'package:padhne_sathi/pages/login.dart';
import 'package:padhne_sathi/pages/signup.dart';

import 'package:flutter/services.dart';
import 'package:sky_engine/_http/http.dart' as http;
import 'dart:convert';



class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // bool login = true;
  // TextEditingController name, email, password;
  // bool processing = false;
  //@override
  // void iniState(){
  // super.initState();
  // name = new TextEditingController();
  // email = new TextEditingController();
  // password = new TextEditingController();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //height: 700,
        //width: 500,

        child: SingleChildScrollView(

          child: Container(

            child: Padding(
              padding: const EdgeInsets.all(50.0),

              child: Column(
                children: [
                  Padding(

                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          focusColor: Colors.white70,
                          border: OutlineInputBorder(
                          ),
                          labelText: 'User Name',
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.person),
                          hintText: 'abc@gmail.com'
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'Password',
                          hintText: 'Please enter your password.'
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 250,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (_) => DashBoard()));
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white, fontSize: 25),

                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) =>
                          SignUp()));
                    },
                    child: Text(
                      'Dont have an account? Sign Up',
                      style: TextStyle(color: Colors.blue, fontSize: 15),
                    ),
                  ),
                ],

              ),
            ),
          ),
        ),
      ),
    );
  }
// void changeState(){
//   if(login){
//     setState(() {
//       login = false;
//
//     });
//   }else
//     setState(() {
//       login = true;
//
//     });
// }
// void userSignIn() async{
//   setState(() {
//     processing = true;
//   });
//   var url = "https://sampleproject098.000webhostapp.com/login_flutter/signin.php";
//   var data = {
//     "email":email.text,
//     "password":password.text,
//   };

// var res = await http.post(url,body:data);
//
// if(jsonDecode(res.body) == "dont have an account"){
//   Fluttertoast.showToast(msg: "dont have an account,Create an account",toastLength: Toast.LENGTH_SHORT);
// }
// else{
//   if(jsonDecode(res.body) == "false"){
//     Fluttertoast.showToast(msg: "incorrect password",toastLength: Toast.LENGTH_SHORT);
//   }
//   else{
//     print(jsonDecode(res.body));
//   }
// }
//
// setState(() {
//   processing = false;
// });
//   }
// }
}