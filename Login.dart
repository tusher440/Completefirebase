import 'package:flutter/material.dart';
import 'package:flutter_completefirebase1/Hompage.dart';
import 'package:flutter_completefirebase1/Registration.dart';

class loginpage extends StatefulWidget {
  @override
  _loginpageState createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  final _rformKey = GlobalKey<FormState>();
  String _remail, _rpassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Login page")),
      ),
      body: Form(
        key: _rformKey,
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
                  _remail = input;
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
                  _rpassword = input;
                });
              },
              validator: (input){
                if(_rpassword.length<4){
                  return "Password is too short";
                }
                return null;
              },
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(top: 5,),
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
                  });
                },
                child: Text("Login",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),

            Padding
              (
              padding: const EdgeInsets.only(top: 5,),
              child: FlatButton(
                onPressed: (){
                  setState(() {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => registration()));
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
