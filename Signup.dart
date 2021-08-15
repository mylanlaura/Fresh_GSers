import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled2/provider/provider.dart';

import 'data_account.dart';

class SignupScreen extends StatefulWidget{

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<SignupScreen> {

  late final String email, password;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(116, 233, 149, 1.0),
        leading: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: BackButton(
            color: Colors.grey[600],
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network(
              'https://scontent.fhph1-3.fna.fbcdn.net/v/t39.30808-6/236044932_1402671230117980_7632980552773668947_n.jpg?_nc_cat=103&ccb=1-5&_nc_sid=730e14&_nc_ohc=6W40J-_sfEsAX8BaPOh&_nc_ht=scontent.fhph1-3.fna&oh=67fdfdc8902dda26afe6e56b9c30d1e2&oe=611BD1B7',
              fit: BoxFit.cover,),

          ),
          Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.6,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width * 0.8,
                  decoration: BoxDecoration(color: Colors.white,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Sign Up",
                            style: TextStyle(fontSize: MediaQuery
                                .of(context)
                                .size
                                .height / 30,),
                          )
                        ],
                      ),
                      _buildEmailRow(),
                      _buildPasswordRow(),
                      _buildSignupButton(),
                    ],
                  ),
                ),
              ))

        ],
      ),
    );
  }

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            email = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          labelText: 'E-mail',
        ),
      ),);
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelText: 'Password',
        ),

      ),);
  }

  Widget _buildSignupButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: (MediaQuery
              .of(context)
              .size
              .height / 20),
          width: 4 * (MediaQuery
              .of(context)
              .size
              .width / 10),
          child: RaisedButton(
            elevation: 5.0,
            color: Colors.lightGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Sign up',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery
                    .of(context)
                    .size
                    .height / 40,
              ),),
          ),
        )
      ],
    );
  }


}