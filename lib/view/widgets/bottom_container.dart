import 'package:flutter/material.dart';
import 'package:scipro_website/resources/assets_manager.dart';
import 'package:scipro_website/resources/string_manger.dart';
import 'package:scipro_website/view/widgets/primary_font_widget.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth >= 1325) {
      return Container(
        width: MediaQuery.of(context).size.width,
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, bottom: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                // color: Colors.blue,
                //width: MediaQuery.of(context).size.width / 3,

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20),
                      child: Image.asset(
                        ImageAssets.scipro,
                        width: 100,
                        height: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          PrimaryFontWidget(
                              text:
                                  'Vectorwind-tech systems pvt.ltd,\nDoor no.4/461, 2nd floor Suite#151,\nValamkottil towers JUdgemukku,Thrikkakkara p.o\nKochi 682021\nIndia',
                              fontSize: 15,
                              fontweight: FontWeight.w500,
                              color: Colors.white)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.phone,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          PrimaryFontWidget(
                              text: '+91 90489 00024',
                              fontSize: 15,
                              fontweight: FontWeight.w500,
                              color: Colors.white)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          PrimaryFontWidget(
                              text: 'info@scipro.in',
                              fontSize: 15,
                              fontweight: FontWeight.w500,
                              color: Colors.white)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //color: Colors.blue,
                //width: MediaQuery.of(context).size.width / 3,

                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: PrimaryFontWidget(
                                text: 'Home',
                                fontSize: 15,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: PrimaryFontWidget(
                                text: 'Upcoming Courses',
                                fontSize: 15,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: PrimaryFontWidget(
                                text: 'Recorded Courses',
                                fontSize: 15,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: PrimaryFontWidget(
                                text: 'Live Courses',
                                fontSize: 15,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: PrimaryFontWidget(
                                text: 'Privacy Policy',
                                fontSize: 15,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: PrimaryFontWidget(
                                text: 'Terms and Conditions',
                                fontSize: 15,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: PrimaryFontWidget(
                                text: 'Cancellation Policy',
                                fontSize: 15,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                        TextButton(
                            onPressed: () {},
                            child: PrimaryFontWidget(
                                text: 'White Board',
                                fontSize: 15,
                                fontweight: FontWeight.w500,
                                color: Colors.white)),
                      ],
                    )
                  ],
                ),
              ),
              Container(

                  //width: MediaQuery.of(context).size.width / 3,

                  child: Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: PrimaryFontWidget(
                    text: AppString.sciproDescription,
                    fontSize: 15,
                    fontweight: FontWeight.w500,
                    color: Colors.white),
              )),
            ],
          ),
        ),
      );
    } else {
      return Container(
        color: Colors.amber,
      );
    }
  }
}
