
import 'package:flutter/material.dart';
import '../main.dart';
import 'buildlista.dart';


class MyHomePage extends StatelessWidget {
  MyHomePage({Key key, this.title, this.url}) : super(key: key);
  final String title, url;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2.0, right: 2.0),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black12,
          elevation: 0,
          centerTitle: false,
          title: Text(
            title,
            /***************** */
            //Tema configurado anteriormente
            //**************** */
            style: thema().textTheme.title,            
          ),
          actions: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 32.0),
              child: InkWell(
                child: Icon(
                  Icons.share,
                  color: Colors.black54,
                ),
              ),
            ),
          ],
        ),
        body: Conexionn(urlNews: url,),
      ),
    );
  }
}
