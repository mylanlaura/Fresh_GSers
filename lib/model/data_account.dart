import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Account{
  final String email;
  final String password;
  const Account({
    required this.email,
    required this.password,
  });
}
List<Account> accountList =[
  Account(
      email: 'shecodehackathon@gmail.com',
      password: '123456')
];