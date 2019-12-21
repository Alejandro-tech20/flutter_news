import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class Detalles extends StatefulWidget {
  Detalles({Key key, this.title, this.url}):super(key:key);
  final String title;
  final String url;
  @override
  NotiDetalles createState()=> NotiDetalles();
  }


class NotiDetalles extends State<Detalles>{
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child:  WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          tooltip: 'Increment',
          child: Icon(Icons.share),
        ),
    );
  }
}