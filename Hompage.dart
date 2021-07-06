import 'package:flutter/material.dart';
import 'package:flutter_completefirebase1/Alldata.dart';

class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  String name;
  String mobile;
  String address;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Home page"),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,
                boxShadow: [
                  BoxShadow(color: Colors.green, spreadRadius: 3),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10,),
                child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(Icons.account_circle_rounded),
                      hintText: "Name",
                    ),
                    onChanged: (input){
                      name = input;
                    }
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,
                boxShadow: [
                  BoxShadow(color: Colors.green, spreadRadius: 3),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10,),
                child: TextField(
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      icon: Icon(Icons.phone_android),
                      hintText: "Mobile",
                    ),
                    onChanged: (input){
                      mobile = input;
                    }
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueAccent,
                boxShadow: [
                  BoxShadow(color: Colors.green, spreadRadius: 3),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 5, right: 10,),
                child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.location_on),
                      hintText: "Address",
                    ),
                    onChanged: (input){
                      address = input;
                    }
                ),
              ),
            ),
          ),

          FlatButton(
              onPressed: (){
                setState(() {

                });
              },
              child: Text("Send Data"),
            color: Colors.blueAccent,
            splashColor: Colors.blueAccent,
          ),

          FlatButton(
            onPressed: (){
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) => alldata(),
                )
                );
              });
            },
            child: Text("Get Data"),
            color: Colors.blueAccent,
            splashColor: Colors.blueAccent,
          ),

          FlatButton(
            onPressed: (){
              setState(() {

              });
            },
            child: Text("Logout"),
            color: Colors.blueAccent,
            splashColor: Colors.blueAccent,
          ),
        ],
      ),
    );
  }
}
