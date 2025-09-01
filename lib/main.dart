import 'package:carpool_app/splash_screen.dart'; //This line imports another Dart file from your project’s lib folder.
import 'package:flutter/material.dart';

class CarPoolApp extends StatelessWidget {
  const CarPoolApp({
    super.key,
  }); //defines a const constructor so this widget can be created as a compile-time constant

  @override
  Widget build(BuildContext context) {
    //is a handle to widget’s location in widget tree.
    return MaterialApp(
      title: 'CarPoolin', //sets app’s title
      theme: ThemeData(primarySwatch: Colors.blue), //defines overall app theme
      home:
          SplashScreen(), //tells Flutter to show SplashScreen widget first when app launches.
    );
  }
}

void main() {
  //is entry point of every Dart/Flutter app
  runApp(
    const CarPoolApp(),
  ); //tells Flutter to start app and inflate CarPoolApp as root widget.
}
