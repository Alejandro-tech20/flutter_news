import 'package:flutter/material.dart';
import 'package:newsallglobal/constants/imagenes.dart';
import 'package:newsallglobal/widget/paginicio.dart';

class BodyPageIndex extends StatelessWidget {
  const BodyPageIndex({Key key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
              children:<Widget>[ Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              Imagenes.fondo,// importado de la clase Imagenes de constants/imagenes.dart
              fit: BoxFit.cover,
            ),
          ),
          BodyAll(),
              ],
    );
  }
}