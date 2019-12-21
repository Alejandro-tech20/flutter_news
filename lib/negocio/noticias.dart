import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';
import 'package:xml/xml.dart' as xml;

Future<RssFeed> getNews({String urlNews:'https://actualidad.rt.com/feeds/all.rss'}) async {
  // var url = 'https://actualidad.rt.com/feeds/all.rss';
  // var url = 'http://api2.rtve.es/rss/temas_noticias.xml';
  // var url = 'https://elpais.com/rss/tags/ultimas_noticias.xml';
  // http://www.juntaex.es/comunicacion/rss-actualidad
  var url = urlNews;
  var response ;
   response = await http.get(Uri.encodeFull(url),);
  //  print(AtomFeed.parse(response.body.toString()));
  var dd = RssFeed.parse(response.body);
  return  dd; //RssFeed.parse(response.body);
}
Future <Null> handle() async{
  await Future.delayed(Duration(seconds: 5));
  return null;
}
class NotiCaradas {
  String titulo, descripcion, fecha, urlImagen, urlNoticia;
  NotiCaradas(
      {this.titulo='',
      this.descripcion='',
      this.fecha='',
      this.urlImagen='',
      this.urlNoticia=''});
      
}
