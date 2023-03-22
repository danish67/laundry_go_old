import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController countryController = TextEditingController();

  @override
  void initState() {
    countryController.text = "+91";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              color: Color(0xfff4f4f4),
              height: 150.0,
              child: Container(
                margin: const EdgeInsets.only(left: 50.0, right: 50.0),
                child: Image.asset('assets/images/Loginscreen.png'),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 35.0),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("LOGIN/REGISTER",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400)),
                  Text(
                    "Place and Manage your order",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Montserrat',
                        color: Color(0xff9747ff),
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Container(
              height: 55,
              margin: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: countryController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Text(
                    "|",
                    style: TextStyle(fontSize: 33, color: Colors.grey),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Phone",
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 50.0,
                width: double.infinity,
                margin: EdgeInsets.only(left: 10, right: 10, bottom: 20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xff9747ff)),
                child: TextButton(
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(
                          fontSize: 20, color: Color(0xff9747ff)),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'otp');
                    },
                    child: const Text('Continue',
                        style: TextStyle(color: Colors.white))))
          ],
        ),
      ),
    );
  }
}
