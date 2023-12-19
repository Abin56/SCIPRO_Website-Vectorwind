// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable
import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

class SciproOffers extends StatelessWidget {
  const SciproOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return  
      Container(
        color: cWhite,
        child:  ResponsiveWebSite.isMobile(context)?Padding(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
              child: OfferColumnWidget(mainText: 'High Quality Teaching', offerImage: 'images/knowledge-transfer.png', secondText: 'Our teachers are well experienced professionals in research as well as education in various domain.',),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
              child: OfferColumnWidget(mainText: '24/7 Support Available', offerImage: 'images/24-hours-support.png', secondText: 'SCIPRO team is dedicated to providing not only teaching but also deliver seamless support to overcome difficulties and ensures safe landing in dream runway',),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 20),
              child: OfferColumnWidget(mainText: 'Interactive eLearning', offerImage: 'images/consulting.png', secondText: 'To provide a best virtual class room learning experience we utilize the latest technology and tools that makes sure the students are 100% satisfied with the learning and produce fruitful results.',),
            )
          ],),
        ):
        Padding(
          padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
          child: Row(children: [
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10,bottom: 25),
              child: Container(color: cWhite,child: OfferColumnWidget(mainText: 'High Quality Teaching', offerImage: 'images/knowledge-transfer.png', secondText: 'Our teachers are well experienced \nprofessionals in research as\nwell as education in various domain.',),),
            )),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
              child: Container(color: cWhite,child: OfferColumnWidget(mainText: '24/7 Support Available', offerImage: 'images/24-hours-support.png', secondText: 'SCIPRO team is dedicated to providing not only teaching but also deliver seamless support to overcome difficulties and ensures safe landing in dream runway',)),
            )),
            Expanded(child: Padding(
              padding: const EdgeInsets.only(left: 10,right: 10,top: 10),
              child: Container(color: cWhite,child: OfferColumnWidget(mainText: 'Interactive eLearning', offerImage: 'images/consulting.png', secondText: 'To provide a best virtual class room learning experience we utilize the latest technology and tools that makes sure the students are 100% satisfied with the learning and produce fruitful results.',)),
            )),
          ],),
        ),
      );
   
  }
}

class OfferColumnWidget extends StatelessWidget {
  String offerImage;
  String mainText;
  String secondText;
  OfferColumnWidget({
    Key? key,
    required this.offerImage,
    required this.mainText,
    required this.secondText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         Image.asset(
                  offerImage,
                  width: 100,
                  height: 100,
                ),
        Padding(
          padding:ResponsiveWebSite.isMobile(context)? const EdgeInsets.only(top: 10,left: 20):const EdgeInsets.only(top: 10,left: 40),
          child: GooglePoppinsWidgets(fontsize: 25, text: mainText,fontWeight: FontWeight.bold,),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: GooglePoppinsWidgets(text: secondText, fontsize: ResponsiveWebSite.isMobile(context)?13:ResponsiveWebSite.isMobile(context)?14:16,textAlign:TextAlign.center ,),
        )
      ],
    );
  }
}