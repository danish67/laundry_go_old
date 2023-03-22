import 'package:flutter/material.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                  padding: EdgeInsets.only(),
                  color: Colors.white,
                  height: 150.0,
                  child: Container(
                    margin: const EdgeInsets.only(left: 50.0, right: 50.0),
                    child: Image.asset('assets/images/starting2.png'),
                  ),
                ),
              ),
            ),
            SizedBox(height: 50.0),
            Center(
              child: Container(
                color: Colors.white,
                height: 300.0,
                child: Container(
                  margin: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Image.asset('assets/images/starting.png'),
                ),
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
                width: 390.0,
                height: 50.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff9747ff)),
                child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 20, color: Color(0xff9747ff)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'login');
                    },
                    child: const Text('Get Started',
                        style: TextStyle(color: Colors.white)))),
          ],
        ),
      ),
    );
  }
}
