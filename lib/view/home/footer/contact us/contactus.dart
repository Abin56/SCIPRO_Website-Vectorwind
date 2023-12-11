import 'package:flutter/material.dart';

import '../../../colors/colors.dart';
import '../../../widgets/primary_font_widget.dart';
import '../../../widgets/responsive/responsive.dart';

class ContactUsContainerWidget extends StatelessWidget {
  const ContactUsContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      //crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         Padding(
           padding: const EdgeInsets.only(left: 20,top: 15),
           child: PrimaryFontWidget(
               text: "Contact Us",
               fontSize: 18,
               fontweight: FontWeight.bold,
               color: cred),
         ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20,top: 20, ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 40,
                  height: 40,
                  child: Image.asset(
                    'assets/images/vector.png',
                    fit: BoxFit.fill,
                  ),
                ),
                 Expanded(
                   child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: PrimaryFontWidget(
                        text: "VectorWind-tech system pvt ltd",
                        fontSize: ResponsiveWebSite.isTablet(context)?12:14,
                        fontweight: FontWeight.bold,
                        color: cBlack),
                                   ),
                 )
              ],
            ),
          ),
        ),
         const SizedBox(
          height: 20,
        ),
         Padding(
          padding:  const EdgeInsets.only(right: 20.0, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.location_on_sharp,
                color: cBlack,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: PrimaryFontWidget(
                    text:
                        "Vectorwind-tech systems pvt.ltd , "
                              "Door no.4/461, 2nd floor , "
                              "Suite# 151, Valamkottil towers , "
                              "Judgemukku, Thrikkakara p.o , "
                              "Kochi 682021 , "
                              "India , ",
                    fontSize: ResponsiveWebSite.isTablet(context)?12:14,
                    fontweight: FontWeight.w500,
                    color: cBlack),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
         Padding(
           padding: const EdgeInsets.only(left: 20),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.start,
             children: [
               const Icon(
                 Icons.phone,
                 color: cBlack,
               ),
              
               Padding(
                 padding: const EdgeInsets.only(left: 10),
                 child: PrimaryFontWidget(
                     text: '+91 1234567890',
                     fontSize: ResponsiveWebSite.isTablet(context)?12:14,
                     fontweight: FontWeight.w500,
                     color: cBlack),
               )
             ],
           ),
         ),
        const SizedBox(
          height: 20,
        ),
         Padding(
          padding: const EdgeInsets.only(right: 20.0, left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Icon(
                Icons.mail,
                color: cBlack,
              ),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: PrimaryFontWidget(
                    text:
                        'info@leptoncommunications.com,\nleptoncommunications@gmail.com',
                    fontSize: ResponsiveWebSite.isTablet(context)?12:14,
                    fontweight: FontWeight.w500,
                    color: cBlack),
              )
            ],
          ),
        ),
      ],
    );
  }
}