import 'package:flutter/material.dart';
import 'package:hack/pages/register.dart';
import 'package:hack/pages/login.dart';
import 'package:hack/pages/charities.dart';
import 'package:hack/pages/profile.dart';
import 'package:hack/pages/descritpion.dart';
import 'package:hack/pages/form.dart';

void main() => runApp(MaterialApp(

  initialRoute: '/',
  routes : {
    '/' : (context)=> Register(),
    '/login' : (context)=> Login(),
    '/profile' : (context) => Profile(),
    '/charities' :(context) => Charities(),
    '/descritpion' :(context) => Description(),
    '/forms' : (context) => Forms(),

  }
)

);