import 'package:flutter/material.dart';
import 'package:newsallglobal/negocio/noticias.dart';
import 'package:webfeed/domain/rss_content.dart';
import 'package:webfeed/util/helpers.dart';
import 'package:webfeed/webfeed.dart';
import 'package:xml/xml.dart' as xml;


import 'Detalles.dart';

class Conexionn extends StatefulWidget {
  final String urlNews;
  Conexionn({this.urlNews});
  @override
  _ConexionWidgetState createState() => _ConexionWidgetState(urlNewss: urlNews);
}

class _ConexionWidgetState extends State<Conexionn> {
  String urlNewss;
  _ConexionWidgetState({this.urlNewss});
  Future<RssFeed> future;
  var refresh = GlobalKey<RefreshIndicatorState>();
  List<String> este;
  @override
  void initState() {
    super.initState();
    refrescar();
  }

  Future<Null> refrescar() async {
    refresh.currentState?.show(atTop: false);
    setState(() {
      future = getNews(urlNews: urlNewss);
    });
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      key: refresh,
      onRefresh: refrescar,
      child: FutureBuilder(
        future: future,
        builder: (BuildContext context, AsyncSnapshot<RssFeed> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
            case ConnectionState.active:
            case ConnectionState.waiting:
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  Text('Cargando...'),
                ],
              ));
            case ConnectionState.done:
              if (snapshot.hasError) return Text('Error: ${snapshot.error}');
              return ListView.builder(
                itemCount: snapshot.data.items.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    child: Card(
                      borderOnForeground: true,
                      elevation: 2.0,
                      semanticContainer: true,
                      child: _item(snapshot.data.items[index]),
                    ),
                  );
                },
              );
          }
          return null;
        },
      ),
    );
  }

  Widget _item(RssItem item) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: IntrinsicHeight(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          image: DecorationImage(
                            image: NetworkImage(
                              item.enclosure?.type == "image/jpeg"
                                  ? item.enclosure.url: item.content?.url != null ? item.content.url : ''
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                        height: 8.0,
                      ),
                      Text(
                        item?.pubDate?.length?.toInt() == null
                            ? ''
                            : item.pubDate?.length?.toInt() > 8
                                ? item.pubDate.substring(
                                    5,
                                    item.pubDate.length > 22
                                        ? 22
                                        : item.pubDate.length)
                                : item.pubDate.toString(),
                        /***************** */
                        //Tema configurado anteriormente
                        //**************** */
                        style: Theme.of(context).textTheme.subtitle,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detalles(
                                    title: 'Noticias',
                                    url: item.link,
                                    key: null,
                                  )));
                    },
                    child: Text(
                      item.title,
                      //********************* */
                      //Tema configurado anteriormente
                      //********************* */
                      style: Theme.of(context).textTheme.subhead,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 8.0,
            ),
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
              ),
              child: Image.network(
                item.enclosure?.type == "image/jpeg" ? item.enclosure.url : item.content?.url != null ? item.content.url : '',
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
 
}
