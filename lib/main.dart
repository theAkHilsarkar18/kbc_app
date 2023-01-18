import 'package:flutter/material.dart';
import 'package:kbc_app/resultScreen.dart';
import 'package:kbc_app/winnerScreen.dart';

import 'homepage.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context)=> HomePage(),
        'output': (context)=> OutPut(),
        'winner': (context)=> WinnerPage(),
      },
    ),
  );
}