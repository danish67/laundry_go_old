import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Homepage/homepage.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        shrinkWrap: true,
        reverse: true,
        children: [
          Column(
            children: [
              Container(
                color: Color(0xfff4f4f4),
                height: 150.0,
                child: Container(
                  margin: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Image.asset('assets/images/Loginscreen.png'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                padding: EdgeInsets.only(left: 35.0),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text("LOGIN/REGISTER",
                        style:
                            TextStyle(fontSize: 25, fontFamily: 'Montserrat')),
                    Text(
                      "Place and Manage your order",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        color: Color(0xff9747ff),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 175.0,
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 35.0, right: 35.0, bottom: 15.0),
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "  First Name",
                    ),
                    TextFormField(
                      maxLength: 10,
                      decoration: const InputDecoration(
                          hintText: ("Full Name"),
                          border: OutlineInputBorder(),
                          counterText: ""),
                    ),
                    SizedBox(height: 20.0),
                    const Text('Email'),
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: ("Email Id (Optional)"),
                          border: OutlineInputBorder(),
                          counterText: ""),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                        width: 350.0,
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
                              Navigator.pushNamed(context, 'homepage');
                            },
                            child: const Text('Continue',
                                style: TextStyle(color: Colors.white)))),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
