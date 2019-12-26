
import 'package:flutter/material.dart';
import 'package:newsallglobal/constants/animations.dart';

class Thema{
ThemeData thema() {
  return ThemeData(
    pageTransitionsTheme: PageTransitionsTheme(
      builders: Map<TargetPlatform, InanimatePageTransitionsBuilde>.fromIterable(
        TargetPlatform.values.toList(),
        key: (dynamic k) => k,
        value: (dynamic _)=> const InanimatePageTransitionsBuilde(),
      ),
    ) ,
      brightness: Brightness.light,
      primarySwatch: Colors.blueGrey,
      accentColor: Color.fromRGBO(58, 66, 86, .5),
      fontFamily: 'Montserrat',
      textTheme: TextTheme(
        headline: TextStyle(fontSize: 12),
        title: TextStyle(
          fontSize: 20,
          fontFamily: 'Montserrat',
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        subtitle: TextStyle(
          fontSize: 12,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        subhead: TextStyle(
          fontSize: 14,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
        ),
        body1: TextStyle(fontSize: 12),
      ));
}
}