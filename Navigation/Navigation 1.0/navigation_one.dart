import 'package:flutter/material.dart';
import 'package:navigation/screen_one.dart';
import 'package:navigation/screen_two.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Navigation Demo',
    //  home: ScreenOne(),
     initialRoute: "/screenone",
     routes: {
      "/screenone": (context) => ScreenOne(),
      "/screentwo": (context) => ScreenTwo(),
     },
    //  onGenerateRoute: (RouteSettings settings) {
    //     switch (settings.name) {
    //       case "/screenone":
    //         return MaterialPageRoute(builder: (context) => ScreenOne());
    //       // case "/screetwo":
    //       default:
    //         return MaterialPageRoute(builder: (context) => ScreenTwo()); 
    //     }
    //  },
   );
 }
}
