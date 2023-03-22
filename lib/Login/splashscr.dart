import 'dart:async';

import 'package:flutter/material.dart';

class Splashscr extends StatefulWidget {
  const Splashscr({super.key});

  @override
  State<Splashscr> createState() => _SplashscrState();
}

class _SplashscrState extends State<Splashscr> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, 'start');
    });
  }

  @override
  Widget build(BuildContext context) {
    var Mheight = MediaQuery.of(context).size.height;
    var Mwidth = MediaQuery.of(context).size.width;
    return Container(
        color: const Color(0xfff4f4f4),
        child: Center(
            child: SizedBox(
                height: Mheight * 0.1108,
                width: Mwidth * 0.7438,
                child: Image.asset('assets/images/splashscr.png'))));
  }
}
