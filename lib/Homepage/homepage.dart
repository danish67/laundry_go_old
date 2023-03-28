import 'package:flutter/material.dart';
import 'package:laundry_go/Components/appbar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:laundry_go/Custom_Widgets/CustomText.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> Services = [
    'machine.png',
    'ironing.png',
    'drycln.png',
    'windows.png'
  ];
  List<String> Servicename = [
    'Wash & Fold',
    'Iron & Fold',
    'Dry Clean',
    'Household'
  ];
  List<String> nearbylaund = [
    'clothes.png',
    'washingmac.png',
    'washingcl.png',
    'iron.png'
  ];
  @override
  Widget build(BuildContext context) {
    var Mheight = MediaQuery.of(context).size.height;
    var Mwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBarPattern(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: Mwidth * 0.0416,
                  right: Mwidth * 0.0416,
                  top: Mheight * 0.0277),
              child: Container(
                height: Mheight * 0.06163,
                decoration: BoxDecoration(
                    color: Color(0xfff4f4f4),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  showCursor: false,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search Laundry or Services",
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: Mheight * 0.0277),
            CarouselSlider(
              options: CarouselOptions(
                  height: Mheight * 0.2645,
                  autoPlay: true,
                  viewportFraction: 1.0),
              items: [
                'assets/images/Offer.png',
                'assets/images/Offer.png',
                'assets/images/Offer.png',
                'assets/images/Offer.png'
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child: Image.asset(i),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(height: Mheight * 0.0527),
            Container(
              padding: EdgeInsets.only(
                  left: Mwidth * 0.04167,
                  right: Mwidth * 0.04167,
                  top: Mheight * 0.01552,
                  bottom: Mheight * 0.02834),
              decoration: BoxDecoration(color: Color(0xffEEE3FD)),
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Laundry Services",
                      textcolor: Color(0xff373737),
                      fontSize: Mheight * 0.02910,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: CustomText(
                            text: "View all", textcolor: Color(0xff9747FF)))
                  ],
                ),
                SizedBox(height: Mheight * 0.0125),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    for (var i = 0; i < 4; i++)
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xfff6f6f6),
                        ),
                        height: Mheight * 0.1182,
                        width: Mwidth * 0.2182,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset('assets/images/${Services[i]}'),
                              CustomText(
                                text: Servicename[i],
                                fontSize: Mheight * 0.02,
                                textcolor: Color(0xff373737),
                              )
                            ]),
                      )
                  ],
                )
              ]),
            ),
            SizedBox(
              height: Mheight * 0.026,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Mwidth * 0.04167, right: Mwidth * 0.04167),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Laundry near you",
                    textcolor: Color(0xff373737),
                    fontSize: Mheight * 0.02910,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'nearbylaundries');
                      },
                      child: CustomText(
                          text: "View all", textcolor: Color(0xff9747FF)))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Mwidth * 0.04167, right: Mwidth * 0.04167),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
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
                                  child: Image.asset(
                                      'assets/images/${nearbylaund[index]}')),
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
                  }),
            ),
            SizedBox(
              height: Mheight * 0.026,
            ),
            Container(
              decoration: BoxDecoration(color: Color(0xffEEE3FD)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: Mwidth * 0.04167, right: Mwidth * 0.04167),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Laundry best rated",
                          textcolor: Color(0xff373737),
                          fontSize: Mheight * 0.02910,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'bestrated');
                            },
                            child: CustomText(
                                text: "View all", textcolor: Color(0xff9747FF)))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Mheight * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: Mheight * 0.0251),
                    child: Container(
                      width: double.infinity,
                      height: Mheight * 0.1322,
                      child: SingleChildScrollView(
                        // physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: Row(children: [
                          for (var i = 0; i < 3; i++)
                            Padding(
                              padding: EdgeInsets.only(left: Mwidth * 0.04167),
                              child: Container(
                                decoration:
                                    BoxDecoration(color: Color(0xFFF4F4F4)),
                                // height: Mheight * 0.125,
                                // width: double.infinity,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: double.infinity,
                                      width: Mheight * 0.105,
                                      decoration: BoxDecoration(
                                          color: Color(0xFF9747FF),
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                          child: Image.asset(
                                              'assets/images/${nearbylaund[i]}')),
                                    ),
                                    SizedBox(
                                      width: Mwidth * 0.0416,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        CustomText(text: 'Express Cleaners'),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(Icons.location_on_outlined),
                                            SizedBox(
                                              width: 6,
                                            ),
                                            CustomText(
                                                text:
                                                    '3.5 km | Dadar Rly. Stn.')
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
                            )
                        ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: Mheight * 0.026,
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Mwidth * 0.04167, right: Mwidth * 0.04167),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Laundry best rated",
                    textcolor: Color(0xff373737),
                    fontSize: Mheight * 0.02910,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'bestrated');
                      },
                      child: CustomText(
                          text: "View all", textcolor: Color(0xff9747FF)))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Mwidth * 0.04167, right: Mwidth * 0.04167),
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
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
                                  child: Image.asset(
                                      'assets/images/${nearbylaund[index]}')),
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
                  }),
            ),
            SizedBox(height: Mheight * 0.0515),
            Padding(
              padding: EdgeInsets.only(bottom: Mheight * 0.1269),
              child: Container(
                  child: Center(
                      child: SizedBox(
                          height: Mheight * 0.1150,
                          width: Mwidth * 0.8194,
                          child: Image.asset('assets/images/footer.png')))),
            ),
          ],
        ),
      ),
    );
  }
}
