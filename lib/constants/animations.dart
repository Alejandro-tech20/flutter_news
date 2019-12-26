import 'package:flutter/material.dart';

// class use to build page transitions that don't have any animation
class InanimatePageTransitionsBuilde extends PageTransitionsBuilder{
  const InanimatePageTransitionsBuilde();
  
  @override
  Widget buildTransitions<T>(
    PageRoute<T> route, 
    BuildContext context,
     Animation<double> animation,
      Animation<double> secondaryAnimation,
       Widget child) {

    return child;
  }
  
}