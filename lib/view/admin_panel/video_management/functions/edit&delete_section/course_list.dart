import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

totalCourseList(BuildContext context) {
  return customShowDilogBox(
      context: context,
      title: 'All Course List',
      children: [
        SizedBox(
          height: 300,
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => ontaponCourseList(context),
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
                                  fontWeight: FontWeight.bold, fontSize: 14),
                            )),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              "Categoey Name",
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
        )
      ],
      doyouwantActionButton: false);
}

ontaponCourseList(BuildContext context) {
  TextEditingController courseNameController = TextEditingController();
  TextEditingController positionController = TextEditingController();
  List<Widget> listofWidget = [
    TextFormFiledContainerWidget(
        controller: courseNameController,
        hintText: 'Enter Course Name',
        title: 'Change Course Name',
        width: 250),
    Container(
      height: 30,
      width: 80,
      decoration: const BoxDecoration(
        color: themeColorBlue,
      ),
      child: Center(
        child: GooglePoppinsWidgets(
            text: 'UPDATE',
            color: cWhite,
            fontsize: 12,
            fontWeight: FontWeight.bold),
      ),
    ),
    TextFormFiledContainerWidget(
        controller: positionController,
        hintText: 'Enter Position eg 1,2...',
        title: 'Change Position',
        width: 250),
    Padding(
      padding: const EdgeInsets.only(left: 0, top: 05),
      child: Container(
        height: 30,
        width: 80,
        decoration: const BoxDecoration(
          color: themeColorBlue,
        ),
        child: Center(
          child: GooglePoppinsWidgets(
              text: 'UPDATE',
              color: cWhite,
              fontsize: 12,
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  ];
  return customShowDilogBox(
      context: context,
      title: "Edit Course",
      children: [
        SizedBox(
          height: ResponsiveWebSite.isDesktop(context) ? 200 : 300,
          width: ResponsiveWebSite.isDesktop(context) ? 400 : 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ResponsiveWebSite.isMobile(context)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        listofWidget[0],
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: listofWidget[1],
                        ),
                        listofWidget[2],
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: listofWidget[3],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        Row(
                          children: [
                            listofWidget[0],
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: listofWidget[1],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            listofWidget[2],
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 20),
                              child: listofWidget[3],
                            ),
                          ],
                        ),
                      ],
                    ),
              GestureDetector(
                onTap: () {
                  customShowDilogBox(
                      context: context,
                      title: "Alert",
                      children: [const Text('Do you want this Course ?')],
                      doyouwantActionButton: true,
                      actiononTapfuction: () {});
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 40,
                    width: 150,
                    color: themeColorBlue,
                    child: const Center(
                      child: Text(
                        "Delete Course",
                        style: TextStyle(
                            color: cWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
      doyouwantActionButton: false);
}
