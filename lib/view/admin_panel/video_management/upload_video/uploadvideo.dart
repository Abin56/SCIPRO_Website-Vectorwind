import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../../widgets/textform feild Widget/textformfeildWidget.dart';

uploadVideoShowDilogue(BuildContext context) {
  customShowDilogBox(
      context: context,
      title: "Upload Video",
      actiontext: "Upload video",
      children: [
        ResponsiveWebSite.isMobile(context)
            ? SizedBox(
                height: 400,
                width: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: themeColorBlue,
                        ),
                        child: Center(
                          child: GooglePoppinsWidgets(
                              text: 'Add Thumbnail',
                              color: cWhite,
                              fontsize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: TextFormFiledContainerWidget(
                        hintText: 'Video Name',
                        title: "Enter Video Name",
                        width: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 20,
                      ),
                      child: TextFormFiledContainerWidget(
                        hintText: 'Enter Position. eg(1,2,3...)',
                        title: "Enter Video Position",
                        width: 250,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: themeColorBlue,
                        ),
                        child: Center(
                          child: GooglePoppinsWidgets(
                              text: 'Pick Videos',
                              color: cWhite,
                              fontsize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : SizedBox(
                height: 400,
                width: 600,
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 70,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: themeColorBlue,
                        ),
                        child: Center(
                          child: GooglePoppinsWidgets(
                              text: 'Add Thumbnail',
                              color: cWhite,
                              fontsize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Enter Video Name :",
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 60),
                            child: TextFormFiledContainerWidget(
                              hintText: 'Video Name',
                              title: "Enter Video Name",
                              width: 300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Center(
                              child: Padding(
                            padding: EdgeInsets.only(top: 20),
                            child: Text(
                              "Enter Video Position :",
                              style: TextStyle(fontSize: 15),
                            ),
                          )),
                          Padding(
                            padding: const EdgeInsets.only(right: 70),
                            child: TextFormFiledContainerWidget(
                              hintText: 'Enter Position. eg(1,2,3...)',
                              title: "Enter Video Position",
                              width: 300,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Container(
                        height: 30,
                        width: 150,
                        decoration: const BoxDecoration(
                          color: themeColorBlue,
                        ),
                        child: Center(
                          child: GooglePoppinsWidgets(
                              text: 'Pick Videos',
                              color: cWhite,
                              fontsize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              )
      ],
      doyouwantActionButton: true);
}
