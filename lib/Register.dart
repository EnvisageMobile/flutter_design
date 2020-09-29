import 'package:flutter/material.dart';

import 'Login.dart';

class Register extends StatelessWidget {
  static String tag = 'register';

  @override
  Widget build(BuildContext context) {
    var logo = Hero(
        tag: 'logo',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: Image.asset('assets/lanching_logo.png'),
          radius: 70,
        )
    );
    var userName = TextFormField(
      keyboardType: TextInputType.name,
      autofocus: false,
      decoration: InputDecoration(
          hintText: 'User Name',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),),
          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0)
      ),
    );
    var email = TextFormField(
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Email Address",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),),
          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0)
      ),
    );
    var passWord = TextFormField(
      keyboardType: TextInputType.visiblePassword,
      autofocus: false,
      decoration: InputDecoration(
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(32.0),),
          contentPadding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0)
      ),
    );
    var register = Padding(
      padding: EdgeInsets.symmetric(vertical: 16),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(
            20.0)),
        padding: EdgeInsets.all(20.0),
        color: Colors.greenAccent,
        child: Text(
          'Register',
          style: TextStyle(color: Colors.green, fontSize: 18),
        ),
        onPressed:(){
          Navigator.of(context).pushNamed(Login.tag);
        }
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24,right: 24),
          children: [
            logo,
            SizedBox(height: 50,),
            userName,
            SizedBox(height: 50,),
            email,
            SizedBox(height: 50,),
            passWord,
            SizedBox(height: 50,),
            register,

          ],
        ),
      ),
    );
  }
}
