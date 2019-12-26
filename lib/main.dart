import 'package:flutter/material.dart';
import 'package:newsallglobal/constants/route_name.dart';
import 'package:newsallglobal/page/bodyIndex.dart';
import 'package:newsallglobal/page/home_agencias.dart';
import 'package:provider/provider.dart';
import 'constants/theme.dart';

void main() => runApp(Inicio());

class Inicio extends StatelessWidget {
  final Thema thema = Thema();
  @override
  Widget build(BuildContext context) {
    return Provider<Thema>.value(
      value: thema,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: thema.thema(),
        initialRoute: RouteName.home,
        navigatorObservers: [RouteObserver()],
        routes: {
          RouteName.home: (context) => HomeAgencias(),
          RouteName.agencias: (context) => BodyPageIndex(),
        },
      ),
    );
  }
}
