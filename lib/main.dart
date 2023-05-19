import 'package:flutter/material.dart';
import 'details.dart';
import 'home.dart';
import 'menu.dart';
import 'summary.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => Home(),
        "/menu": ((context) => Menu()),
        "/details": ((context) => Details()),
        "/summary": ((context) => Summary())
      },
    ));
