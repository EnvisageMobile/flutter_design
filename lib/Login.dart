import 'package:flutter/material.dart';
import 'package:flutter_app/Register.dart';

class Login extends StatefulWidget {
  //add  tag
  static String tag = "login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
        tag: 'logo',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset('assets/lanching_logo.png',),
          radius: 70.0,
        )
    );
    final email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      initialValue: 'example@gmail.com',
      decoration: InputDecoration(
          hintText: 'Email Address',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0)),
    );
    final password = TextFormField(
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      initialValue: '12345',
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0)),
    );
    final login = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        padding: EdgeInsets.all(12.0),
        color: Colors.greenAccent,
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    );
    final forgotLable = FlatButton(
      child: Text(
        'Dont have a account? signup',
        style: TextStyle(color: Colors.green, fontSize: 18),

      ),
      onPressed:() {
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context) {
              return new Register();
            })
        );
      }
    );


    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 50.0,),
            email,
            SizedBox(height: 15.0,
            ),
            password,
            SizedBox(height: 50,),
            login,
            forgotLable

          ],
        ),
      ),
    );
  }
}
