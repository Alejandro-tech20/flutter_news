import 'dart:async';
import 'package:http/http.dart' as http;
import 'package:webfeed/webfeed.dart';


Future<RssFeed> getNews({String urlNews:'https://actualidad.rt.com/feeds/all.rss'}) async {  
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
