import 'package:flutter/material.dart';
import 'ExternalPages/best_rated.dart';
import 'ExternalPages/nearby_laundry.dart';
import 'Homepage/homepage.dart';
import 'Login/login.dart';
import 'Login/otp.dart';
import 'Login/register.dart';
import 'Login/splashscr.dart';
import 'Login/start.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        '/': (context) => Splashscr(),
        'start': (context) => Start(),
        'login': (context) => Login(),
        'otp': (context) => otp(),
        'register': (context) => Register(),
        'homepage': (context) => Homepage(),
        'nearbylaundries': (context) => NearbyLaundry(),
        'bestrated': (context) => Bestrated()
      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
    );
  }
}
