import 'package:flutter/material.dart';
// import 'package:laundrygo/Custom_text.dart';

import 'package:laundry_go/Custom_Widgets/CustomText.dart';

class Bestrated extends StatefulWidget {
  const Bestrated({super.key});

  @override
  State<Bestrated> createState() => _BestratedState();
}

class _BestratedState extends State<Bestrated> {
  @override
  Widget build(BuildContext context) {
    var Mwidth = MediaQuery.of(context).size.width;
    var Mheight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_sharp,
            color: Colors.black,
          ),
        ),
        // centerTitle: true,
        // automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        title: Padding(
          padding: EdgeInsets.only(left: 08.0),
          child: CustomText(
            text: 'Laundry Best Rated',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Mwidth * 0.0416),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10.0, top: 10),
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xFFF4F4F4)),
                        height: Mheight * 0.125,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: double.infinity,
                              width: Mheight * 0.125,
                              decoration: BoxDecoration(
                                  color: Color(0xFF9747FF),
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child:
                                      Image.asset('assets/images/clothes.png')),
                            ),
                            SizedBox(
                              width: Mwidth * 0.0416,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomText(text: 'Express Cleaners'),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    SizedBox(
                                      width: 6,
                                    ),
                                    CustomText(text: '3.5 km | Dadar Rly. Stn.')
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orange,
                                      size: 20,
                                    ),
                                    SizedBox(width: 5),
                                    CustomText(text: '3.1')
                                  ],
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
