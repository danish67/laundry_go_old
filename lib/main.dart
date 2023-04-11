import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'ExternalPages/best_rated.dart';
import 'ExternalPages/nearby_laundry.dart';
import 'Homepage/homepage.dart';
import 'Login/login.dart';
import 'Login/otp.dart';
import 'Login/register.dart';
import 'Login/splashscr.dart';
import 'Login/start.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
      initialRoute: '/',
    );
  }
}
