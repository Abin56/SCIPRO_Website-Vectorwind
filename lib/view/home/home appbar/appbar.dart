import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';

import '../../../resources/assets_manager.dart';
import '../../fonts/google_poppins.dart';
import '../../widgets/responsive/responsive.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveWebSite.isMobile(context)?Column(
        children: [
          Row(children: [
            Row(
              children: [
                SizedBox(
                  height: 50,
                  child: Image.asset(
                          ImageAssets.scipro,
                          height: 30,
                          width: 30,
                  ),
                ),
              ],
            ),
            Column(children: [
             Row(
                            children: [
                              const SizedBox(
                                height: 20,
                                child: Icon(
                                  Icons.phone,
                                //  color: Color.fromRGBO(255, 255, 255, 1),
                                color: cWhite,
                                ),
                              ),
                              GooglePoppinsWidgets(
                                text: '+919048900024',
                                fontsize: 12,
                               // color: cWhite,
                               color: themeColorBlue,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
              Row(
                        children: [
                          const SizedBox(
                            height: 20,
                            child: Icon(
                              Icons.mail,
                             // color: Color.fromRGBO(255, 255, 255, 1),
                             color:themeColorBlue
                            ),
                          ),
                          GooglePoppinsWidgets(
                            text: 'info@scipro.in',
                            fontsize: 12,
                            color: themeColorBlue,
                            fontWeight: FontWeight.bold,
                          )
                        ],
                      ),
                      
            ],),
             
              
          ],),
          Padding(
            padding: const EdgeInsets.only(top: 10,right: 10,),
            child: SizedBox(height: 50, width: double.infinity,child: AppBarList[5]),
          )
        ],
      )
       :Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: AppBarList[0],
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                    child: AppBarList[1],
                  ),
                  AppBarList[2]
                ],
              )),
          Padding(
              padding: const EdgeInsets.only(left: 20,right: 20),
              child: Row(
                children: [
                  SizedBox(height: 50,
                            child: AppBarList[3],),AppBarList[4]
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(top: 10,),
            child: Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: 50, child: AppBarList[6],),AppBarList[5]
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<Widget> AppBarList = [
  SizedBox(
    height: 50,
    child: Image.asset(
      ImageAssets.scipro,
      height: 80,
      width: 80,
    ),
  ), //////////////////////////////////////////////////////0
  const Icon(
    Icons.phone,
    color: themeColorBlue
  ), /////////////////////////////////////////////////////////////////////1
  GooglePoppinsWidgets(
    text: '+919048900024',
    fontsize: 14,
    color: themeColorBlue,
    fontWeight: FontWeight.bold,
  ), //////////////////////////////////////////////////////////////////////////////////////2
  const Icon(
    Icons.mail,
   // color: Color.fromRGBO(255, 255, 255, 1),
   color: themeColorBlue
  ), /////////////////////////////////////////////////////////////////////////////////////////3
  GooglePoppinsWidgets(
    text: 'info@scipro.in',
    fontsize: 14,
    color: themeColorBlue,
    fontWeight: FontWeight.bold,
  ), //////////////////////////////////////////////////////////////////////////////////4
 GooglePoppinsWidgets(
    text: 'Login',
    fontsize: 14,
    color: themeColorBlue,
    fontWeight: FontWeight.bold,
  ),///////////////////////////////////////////////////////////////////////////////////////5
  const Icon(
    Icons.login_outlined,
    color: themeColorBlue
  ) //////////////////////////////////////////////////////////////////////////////////////6
];




class LoginButtonWidget extends StatelessWidget {
final  String text;
  
 const LoginButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        border: Border.all(color: themeColorBlue),

        borderRadius: BorderRadius.circular(10) ,
      ),
      width: ResponsiveWebSite.isMobile(context)?20: 20,
      height: 30,
      child: Center(
        child: GooglePoppinsWidgets(
          textAlign: TextAlign.center,
        //  color: cWhite,
          color:themeColorBlue,
          fontWeight: FontWeight.w500,
          text: text,
          fontsize: 14,
        ),
      ),
    );
  }
}