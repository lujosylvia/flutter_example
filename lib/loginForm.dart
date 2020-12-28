import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  LoginFormState createState() => LoginFormState();
}

class LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username'
            ),
            validator: (value) {
              if(value.isEmpty) {
                return 'Enter your username';
              }
              return null;
            },
          ),
          SizedBox(height: 10, ),
          TextFormField(
            textAlignVertical: TextAlignVertical.center,
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password'
            ),
            validator: (value) {
              if(value.isEmpty) {
                return 'Enter your password';
              }
              return null;
            },
          ),
          SizedBox(height: 10, ),
          ElevatedButton(
            onPressed: () {
              if(_formKey.currentState.validate()) {
                ScaffoldMessenger
                    .of(context)
                    .showSnackBar(SnackBar(
                      duration: new Duration(milliseconds: 3000),
                      behavior: SnackBarBehavior.floating,
                      content: Text('Welcome, User')));

                Navigator.pushNamed(context, '/home');
              }
            },
            child: Text('Submit'),
          )
        ]
      )
      )
    );
  }
}