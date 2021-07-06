import 'package:flutter/material.dart';
import 'package:flutter_completefirebase1/Login.dart';

class registration extends StatefulWidget {
  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Registration")),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.email),
                hintText: "Enter a email",
                labelText: "Email",
              ),
              onSaved: (input){
                setState(() {
                  _email = input;
                });
              },
              validator: (input){
                if(input.isEmpty){
                  return "Please type an email";
                }
                return null;
              },
            ),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                icon: Icon(Icons.vpn_key_rounded),
                hintText: "Enter a password",
                labelText: "Password",
              ),
              onSaved: (input){
                setState(() {
                  _password = input;
                });
              },
              validator: (input){
                if(_password.length<4){
                  return "Password is too short";
                }
                return null;
              },
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20,),
              child: FlatButton(
                onPressed: (){
                  setState(() {

                  });
                },
                child: Text("Register",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
