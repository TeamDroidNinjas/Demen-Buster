import 'package:flutter/material.dart';
import 'package:Demen_Buster/services/auth.dart';
import 'package:flutter/cupertino.dart';

class SignIn extends StatefulWidget {
  final Function toggle;
  SignIn({this.toggle});

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = "";
  String passWord = "";
  final AuthServices _auth = AuthServices();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[200],
      appBar: AppBar(
        backgroundColor: Colors.amber[500],
        elevation: 10,
        title: Text("Sign In in to The Game"),
        actions: [
          FlatButton.icon(
            icon: Icon(Icons.person_add),
            label: Text("Register"),
            onPressed: () {
              widget.toggle();
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        child: Form(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              TextFormField(
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                onChanged: (val) {
                  setState(() => passWord = val);
                },
              ),
              SizedBox(height: 20),
              RaisedButton(
                child: Text(
                  "Sign In",
                ),
                onPressed: () async {
                  print(email);
                  print(passWord);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
