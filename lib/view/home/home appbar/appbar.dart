// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/sign_in/sign_in.dart';

import '../../../resources/assets_manager.dart';
import '../../fonts/google_poppins.dart';
import '../../widgets/responsive/responsive.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveWebSite.isMobile(context)
          ? Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: SizedBox(
                          child: Image.asset(
                            'assets/images/scipro.png',
                            height: 80,
                            width: 80,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.phone, size: 12.0,
                                  //  color: Color.fromRGBO(255, 255, 255, 1),
                                  color: cWhite,
                                ),
                                GooglePoppinsWidgets(
                                  text: '+919048900024',
                                  fontsize: 12,
                                  // color: cWhite,
                                  color: cWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.mail,
                                    // color: Color.fromRGBO(255, 255, 255, 1),
                                    color: cWhite,
                                    size: 12.0),
                                GooglePoppinsWidgets(
                                  text: 'info@scipro.in',
                                  fontsize: 12,
                                  color: cWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () => loginshowDilogueBox(context),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Icon(
                              Icons.login,
                              color: cWhite,
                              size: 15,
                            ),
                            GooglePoppinsWidgets(
                              text: 'Login',
                              fontsize: 12,
                              color: cWhite,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    //color: Colors.amber,

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                  height: 10,
                                  child: TextButton(
                                    onPressed: () {
                                      loginshowDilogueBox(context);
                                    },
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        const Icon(Icons.login,
                                            color: cWhite, size: 15.0),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 5),
                                          child: GooglePoppinsWidgets(
                                            text: 'LOGIN',
                                            fontsize: 12,
                                            color: cWhite,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          : Row(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    height: 50,
                    child: Image.asset(
                      'assets/images/scipro.png',
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
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
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 50,
                          child: AppBarList[3],
                        ),
                        AppBarList[4]
                      ],
                    )),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 50,
                          child: TextButton(
                            onPressed: () {
                              loginshowDilogueBox(context);
                            },
                            child: Row(
                              children: [
                                const Icon(
                                  Icons.login,
                                  color: cWhite,
                                ),
                                GooglePoppinsWidgets(
                                  text: 'LOGIN',
                                  fontsize: 14,
                                  color: cWhite,
                                  fontWeight: FontWeight.bold,
                                ),
                              ],
                            ),
                          )),
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
      height: 100,
      width: 100,
    ),
  ), //////////////////////////////////////////////////////0
  const Icon(Icons.phone,
      color:
          cWhite), /////////////////////////////////////////////////////////////////////1
  GooglePoppinsWidgets(
    text: '+919048900024',
    fontsize: 14,
    color: cWhite,
    fontWeight: FontWeight.bold,
  ), //////////////////////////////////////////////////////////////////////////////////////2
  const Icon(Icons.mail,
      // color: Color.fromRGBO(255, 255, 255, 1),
      color:
          cWhite), /////////////////////////////////////////////////////////////////////////////////////////3
  GooglePoppinsWidgets(
    text: 'info@scipro.in',
    fontsize: 14,
    color: cWhite,
    fontWeight: FontWeight.bold,
  ),
];
