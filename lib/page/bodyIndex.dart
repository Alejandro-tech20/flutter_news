import 'package:flutter/material.dart';
import 'package:newsallglobal/vista/paginicio.dart';


class BodyPageIndex extends StatelessWidget {
  const BodyPageIndex({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
              children:<Widget>[ Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "iconos/wallpaper.jpg",
              fit: BoxFit.cover,
            ),
          ),
          BodyAll(),
              ],
    );
  }
}