import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../colors/colors.dart';
import '../../fonts/google_poppins.dart';

class IntroHome extends StatelessWidget {
  const IntroHome({super.key});

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
                          'assets/images/main1gopikafinal.jpg',
                        ))),
              child:  Column(children: [
            //  const AppBarWidget(),
               Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20,right: 20),
                    child: Container(
                       alignment: Alignment.topRight,
                      child: GooglePoppinsWidgets(
                        text: 'Your Dream Job is\ncloser than you Think',
                        fontsize: 20,
                        color: cWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                 Row(mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     Expanded(
                       child: Padding(
                        padding: const EdgeInsets.only(bottom: 80),
                        child: Container(
                           alignment: Alignment.topRight,
                          child: GooglePoppinsWidgets(
                            text:
                                'The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students',
                            fontsize: 12,
                            color: cWhite,
                          ),
                        ),
                                       ),
                     ),
                   ],
                 ),
                Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height:ResponsiveWebSite.isMobile(context)?30: 50,width:ResponsiveWebSite.isMobile(context)?80: 110,
                                       decoration: const BoxDecoration(
                                         image: DecorationImage(fit: BoxFit.contain,
                        image: AssetImage('assets/images/google-play-logo.jpg',))),
                                         alignment: Alignment.bottomRight,
                                         
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
                      'assets/images/main1gopikafinal.jpg',
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
                    child: Container(
                       alignment: Alignment.topRight,
                      child: GooglePoppinsWidgets(
                        text: 'Your Dream Job is\ncloser than you Think',
                        fontsize: 30,
                        color: cWhite,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ), 

                Padding(
                  padding: const EdgeInsets.only(bottom: 320),
                  child: Container(
                     alignment: Alignment.topRight,
                    child: GooglePoppinsWidgets(
                      text:
                          'The Industry Oriented Concept Being Unique,\nFocuses Onprofile Mapping, Skill Gap Analysis,\nIndustry Analysis and Training the Students',
                      fontsize: 16,
                      color: cWhite,
                    ),
                  ),
                ), Row(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        height: 50,width: 110,
                                       decoration: const BoxDecoration(
                                         image: DecorationImage(fit: BoxFit.contain,
                        image: AssetImage('assets/images/google-play-logo.jpg',))),
                                         alignment: Alignment.bottomRight,
                                         //child: Image.asset('assets/images/google-play-logo.jpg',)
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
