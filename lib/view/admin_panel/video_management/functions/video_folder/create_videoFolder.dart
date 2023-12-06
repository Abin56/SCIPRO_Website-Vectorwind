import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/video_folder/show_videoList.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/back_container/back_container.dart';
import 'package:scipro_website/view/widgets/button_container_widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
import 'package:scipro_website/view/widgets/textform_field_Widget/textformfieldWidget.dart';

viewVideoFolder(BuildContext context) {
  List<Widget> showvideosWidgets = [
    GestureDetector(
        onTap: () => createVideoFolder(context),
        child: const ButtonContainerWidget(text: "Create Video Folder "))
  ];
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
                text: "Video Folders",
                fontsize: 13,
                fontWeight: FontWeight.w600),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ResponsiveWebSite.isMobile(context)
                  ? Column(
                      children: [
                        const BackButtonContainerWidget(),
                        const SizedBox(
                          height: 10,
                        ),
                        showvideosWidgets[0],

                        ///  Setting
                      ],
                    )
                  : Row(
                      children: [
                        const BackButtonContainerWidget(),
                        const Spacer(),
                        showvideosWidgets[0],
                      ],
                    ),
            )
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              SizedBox(
                height: 400,
                width: 600,
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          showVideoList(context);
                        },
                        child: Container(
                          height: 40,
                          width: 100,
                          color: themeColorBlue.withOpacity(0.9),
                          child: Row(
                            children: [
                              Container(
                                height: double.infinity,
                                color: cWhite,
                                width: 60,
                                child: Center(
                                    child: Text(
                                  '${index + 1}',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                )),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "Video Folder Name",
                                  style: TextStyle(
                                      color: cWhite,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                    itemCount: 10),
              ),
            ],
          ),
        ),
      );
    },
  );
}

createVideoFolder(BuildContext context) {
  TextEditingController categoryNameController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  return customShowDilogBox(
      context: context,
      title: 'Create Video Folder',
      children: [
        SizedBox(
          height: ResponsiveWebSite.isDesktop(context) ? 200 : 300,
          width: ResponsiveWebSite.isDesktop(context) ? 400 : 200,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Column(
              children: [
                TextFormFiledContainerWidget(
                    controller: categoryNameController,
                    hintText: 'Enter Folder Name',
                    title: 'Folder Name',
                    width: 250),
                const SizedBox(
                  height: 20,
                ),
                TextFormFiledContainerWidget(
                    controller: positionController,
                    hintText: 'Enter Position eg 1,2...',
                    title: 'Enter Position',
                    width: 250),
              ],
            )
          ]),
        ),
      ],
      actiononTapfuction: () {},
      actiontext: 'Create Folder',
      doyouwantActionButton: true);
}
