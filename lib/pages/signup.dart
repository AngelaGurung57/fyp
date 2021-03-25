import 'package:flutter/material.dart';
import 'package:padhne_sathi/pages/dashboard.dart';
import 'package:padhne_sathi/pages/login.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';


class SignUp extends StatefulWidget {
  @override
  SignUpState createState() => SignUpState();
}

class SignUpState extends State<SignUp> {

  //
  // TextEditingController name = TextEditingController();
  // TextEditingController email = TextEditingController();
  // TextEditingController password = TextEditingController();
  //
  // Future register() async {
  //   var url = "http://192.168.30.186/padhne_sathi/signup.php";
  //   var response = await http.post(url, body: {
  //     "name": name.text,
  //     "email": email.text,
  //     "password": password.text,
  //   });
  //   var data = json.decode(response.body);
  //   if (data == "Error") {
  //     Fluttertoast.showToast(
  //         msg: "The entered user is already registered.",
  //         // child: Text(
  //         //   'The entered user is already registered.',
  //         //   style: TextStyle(fontSize: 25, color: Colors.red),
  //         // )
  //   );
  //   } else {
  //     Fluttertoast.showToast(
  //       msg: "Registration Successful",
  //         // child: Text('Registration Successful',
  //         //     style: TextStyle(fontSize: 25, color: Colors.green),
  //         // ),
  //     );
  //     Navigator.push(context, MaterialPageRoute(builder: (context)=> DashBoard(),),);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                          border: OutlineInputBorder(),
                          labelText: 'Name',
                          hintText: 'Your name please',
                          prefixIcon: Icon(Icons.person),
                      ),
                      //controller: name,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        prefixIcon: Icon(Icons.email),
                        hintText: 'abc@gmail.com'
                      ),
                      // controller: email,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Please enter your password.'
                      ),
                      //controller: password,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Confirm Password',
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Enter password to Confirm'
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
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.white, fontSize: 25),

                      ),
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
}
