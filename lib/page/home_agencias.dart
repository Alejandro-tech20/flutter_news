import 'package:flutter/material.dart';
import 'package:newsallglobal/constants/colores.dart';
import 'package:newsallglobal/constants/imagenes.dart';
import 'package:newsallglobal/constants/title_page.dart';
import 'package:newsallglobal/widget/bottombarnavegator.dart';
import 'package:newsallglobal/widget/paginicio.dart';

class HomeAgencias extends StatelessWidget {
  const HomeAgencias({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xFF4A4A58),//Colors.grey[400],
      bottomNavigationBar:
          BottomBarNavegator(), // Clase importada para poner la barra de navegacion debajo
      drawer: Drawer(
        elevation: 8,
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('data'),
              onTap: (){},
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Color(0xFF4A4A58),
        title: Text(TitlePage.home),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              Imagenes
                  .fondo, // importado de la clase Imagenes de constants/imagenes.dart
              fit: BoxFit.cover,
            ),
          ),
          BodyAll(),
        ],
      ),
    );
  }
}
