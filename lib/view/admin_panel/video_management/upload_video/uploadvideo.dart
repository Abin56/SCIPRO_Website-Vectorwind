import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../../widgets/textform feild Widget/textformfeildWidget.dart';

uploadVideoShowDilogue(BuildContext context) {
  TextEditingController videonNamecontroller = TextEditingController();
  TextEditingController videoPositioncontroller = TextEditingController();
/////////////////////
////////
  ///video Upload Widget List
  List<Widget> uploadVedioWidgets = [
    const CircleAvatar(
      radius: 60,
    ), /////////////////////////////////1/////////Circle Avathar
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
    ), ////////////////////////////////////2//////////thumbnail
    TextFormFiledContainerWidget(
      hintText: 'Enter Video Name',
      title: " Video Name",
      width: 250,
      validator: checkFieldEmpty,
      controller: videonNamecontroller,
    ), /////////////////////////////////////////3//// 'Video Name Textform feild
    TextFormFiledContainerWidget(
      hintText: 'Enter Video Position. eg(1,2,3...)',
      title: "Video Position",
      width: 250,
      validator: checkFieldEmpty,
      controller: videoPositioncontroller,
    ), ////////////////////////////////////////////4//////////Videoposition Text formfeild
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
    ), ///////////////////////////////////////////////////////pickvedio
    Center(
        child: GooglePoppinsWidgets(
      text: "Enter Video Name :",
      fontsize: 15,
    )), /////////////6///////enter video name Text
    Center(
        child: GooglePoppinsWidgets(
      text: "Enter Video Position :",
      fontsize: 15,
    )), //////////////////////7//////enter video position Text/////////
    //////////////////////////
  ];
  return customShowDilogBox(
      context: context,
      title: "Upload Video",
      actiontext: "Upload video",
      actiononTapfuction: () {
        final key = formKey;
        if (key.currentState!.validate()) {}
      },
      children: [
        ResponsiveWebSite.isMobile(context)
            ? SizedBox(
                height: 400,
                width: 600,
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      uploadVedioWidgets[0],
                      uploadVedioWidgets[1],
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: uploadVedioWidgets[2],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: uploadVedioWidgets[3],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: uploadVedioWidgets[4],
                      ),
                    ],
                  ),
                ),
              )
            : SizedBox(
                height: 400,
                width: 600,
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      uploadVedioWidgets[0],
                      uploadVedioWidgets[1],
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 80),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: uploadVedioWidgets[5],
                            ),
                            uploadVedioWidgets[2]
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, right: 90),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: uploadVedioWidgets[6],
                            ),
                            uploadVedioWidgets[3],
                          ],
                        ),
                      ),
                      uploadVedioWidgets[4],
                    ],
                  ),
                ),
              )
      ],
      doyouwantActionButton: true);
}
