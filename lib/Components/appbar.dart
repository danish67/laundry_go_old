import 'package:flutter/material.dart';

class AppBarPattern extends StatefulWidget implements PreferredSizeWidget {
  const AppBarPattern({super.key});

  @override
  State<AppBarPattern> createState() => _AppBarPatternState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _AppBarPatternState extends State<AppBarPattern> {
  @override
  Widget build(BuildContext context) {
    var mWidth = MediaQuery.of(context).size.width;
    return AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffffffff),
        title: Row(
          children: [
            Image.asset(
              'assets/images/hplogo.png',
              width: mWidth * 0.388,
            ),
            SizedBox(width: mWidth * 0.1194),
            Image.asset('assets/images/loc.png', width: mWidth * 0.2167),
            SizedBox(width: mWidth * 0.1),
            Image.asset('assets/images/cart.png', width: mWidth * 0.0788),
          ],
        ));
  }
}
