

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/MainPage.dart';
import 'package:untitled2/model/Signup.dart';
import 'package:untitled2/model/data_account.dart';
import 'package:untitled2/model/data_ingredient.dart';

class LoginScreen extends StatefulWidget{
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  late String email, password;
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        key: formkey,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.network('https://scontent.fhph1-1.fna.fbcdn.net/v/t39.30808-6/238103333_1402765743441862_7816219068073068796_n.jpg?_nc_cat=104&ccb=1-5&_nc_sid=730e14&_nc_ohc=L-b9xvUi5pcAX98uM16&_nc_ht=scontent.fhph1-1.fna&oh=deb9196cd1462d8d6f083d51140f577d&oe=611C9C51', fit: BoxFit.cover,),

          ),
          Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Container(
                  height: MediaQuery.of(context).size.height*0.4,
                  width: MediaQuery.of(context).size.width*0.8,
                  decoration: BoxDecoration( color: Colors.white,),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Log in",
                            style: TextStyle(fontSize: MediaQuery.of(context).size.height / 30,),
                          )],
                      ),
                      _buildEmailRow(),
                      _buildPasswordRow(),
                      _notiffication(),
                      _buildLoginButton(),
                    ],
                  ),
                ),
              ))

        ],
      ),
    );
  }
  Widget _buildEmailRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value){
          setState((){
            email = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          labelText: 'E-mail',
        ),
        validator: (value){
          if(email.isEmpty) {
            "nhập lại email" ;}
          else{return null;};

        },
      ),);
  }
  Widget _buildPasswordRow(){
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value){
          setState((){
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.lock),
          labelText: 'Password',
        ),

      ),);
  }
  Widget _buildLoginButton(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: (MediaQuery.of(context).size.height/20),
          width: 4*(MediaQuery.of(context).size.width/10),
          child: RaisedButton(
            elevation: 5.0,
            color: Colors.lightGreen,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: (){
            for(int i=0; i<accountList.length; i++){
              if(email==accountList[i].email && password==accountList[i].password){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> MainPage()));};
              }
            },

            child: Text(
              'Log in',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height/40,
              ),),
          ),
        )
      ],
    );
  }

  Widget _notiffication(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,

      children:<Widget> [
        FlatButton(onPressed: (){}, child: Text('Forget Password')),
        FlatButton(onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()),), child: Text('Sign up')),
      ],
    );
  }



}