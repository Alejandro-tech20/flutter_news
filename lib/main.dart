import 'package:flutter/material.dart';
import 'package:newsallglobal/page/bodyIndex.dart';

// void main() => runApp(MyApp());

void main() => runApp(Inicio());

class Inicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: thema(),
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        bottomNavigationBar: Container(
          height: 55,
          child: BottomAppBar(
            color: Color.fromRGBO(7, 7, 7, .85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.blur_on,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.hotel,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.account_box,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text('Noticias'),
        ),
        // body: '/index',
        body: BodyPageIndex(),
      ),
      routes: {
        '/index': (_)=> BodyPageIndex(),
      },
    );
  }
}



ThemeData thema() {
  return ThemeData(
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
