import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../colors/colors.dart';
import '../../fonts/google_poppins.dart';

class IntroHome extends StatelessWidget {
   IntroHome({super.key});
  final Uri playstorelink = Uri.parse('https://play.google.com/store/apps/details?id=com.vectorwind.in');
   Future<void> _launchplaystore() async {
    if (!await launchUrl(playstorelink)) {
      throw 'Could not launch $playstorelink';
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        child:ResponsiveWebSite.isMobile(context)?Column(
          children: [
            Container(
              height: 450,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fitHeight,
                        
                        image: AssetImage(
                          'images/main1gopikafinal.jpg',
                        ))),
              child:  Column(children: [
            //  const AppBarWidget(),
           
               Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,right: 20),
                    child: Column(
                      children: [
                        Container(
                           alignment: Alignment.topRight,
                          child: GooglePoppinsWidgets(
                            text: 'Your Dream Job is\ncloser than you Think',

                            fontsize: 20,
                            color: cWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                         Padding(
                          padding: const EdgeInsets.only(top: 25,right: 50),
                          child: Container(
                             alignment: Alignment.topRight,
                            child: GooglePoppinsWidgets(
                              text:
                                  'Join SCIPRO for a better future',
                              fontsize: 12,
                              color: cWhite,
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
                ),
                 
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(onTap: (){
                  _launchplaystore();
                    },
                      child: Container(
                          height:ResponsiveWebSite.isMobile(context)?30: 50,width:ResponsiveWebSite.isMobile(context)?80: 110,
                                         decoration: const BoxDecoration(
                                           image: DecorationImage(fit: BoxFit.contain,
                          image: AssetImage('images/google-play-logo.jpg',))),
                                           alignment: Alignment.bottomRight,
                                           
                                           ),
                    ),
                  ],
                ),
            ],),),
           
          ],
        ): Row(
      children: [
        Expanded(
          child: Container(
            height: 750,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fitHeight,
                    
                    image: AssetImage(
                      'images/main1gopikafinal.jpg',
                    ))),
           child: 
            Column(
              
              children: [
                //  Expanded(child: Container(alignment: Alignment.topLeft,
                //   child: const AppBarWidget(),
                //   )),
                  
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,right: 40),
                    child: Column(
                      children: [
                        Container(
                           alignment: Alignment.topRight,
                          child: GooglePoppinsWidgets(
                            text: 'Your Dream Job is\ncloser than you Think',
                            fontsize: 30,
                            color: cWhite,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 25,right: 50),
                          child: Container(
                             alignment: Alignment.topRight,
                            child: GooglePoppinsWidgets(
                              text:
                                  'Join SCIPRO for a better future',
                              fontsize: 17,
                              color: cWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ), 
 Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (){
                        _launchplaystore();
                      },
                      child: Container(
                          height: 50,width: 110,
                                         decoration: const BoxDecoration(
                                           image: DecorationImage(fit: BoxFit.contain,
                          image: AssetImage('images/google-play-logo.jpg',))),
                                           alignment: Alignment.bottomRight,
                                           //child: Image.asset('images/google-play-logo.jpg',)
                                           ),
                    ),
                  ],
                ),
               
              ],
            ),
          ),
        )
      ],
    ));
  }
}
