import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

totalCourseList(BuildContext context) {
  return customShowDilogBox(
      context: context,
      title: 'All Course List',
      children: [
        SizedBox(
          height: 400,
          width: 500,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => ontaponCourseList(context),
                  child: Container(
                    height: 40,
                    width: 300,
                    color: themeColorBlue,
                    child: const Row(
                      children: [
                        Text("Course Name"),
                        Spacer(),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemCount: 10),
        )
      ],
      doyouwantActionButton: false);
}

ontaponCourseList(BuildContext context) {
  TextEditingController videoNameController = TextEditingController();
  return customShowDilogBox(
      context: context,
      title: "Edit Course",
      children: [
        TextFormFiledContainerWidget(
            controller: videoNameController,
            hintText: 'Enter Course Name',
            title: 'Change Course Name',
            width: 200),
        TextFormFiledContainerWidget(
            controller: videoNameController,
            hintText: 'Enter video Position',
            title: 'Change Course Position (eg 1,2,..)',
            width: 200),
        GestureDetector(
          onTap: () {
            customShowDilogBox(
                context: context,
                title: "Alert",
                children: [const Text('Do you want this Course ?')],
                doyouwantActionButton: true,
                actiononTapfuction: () {});
          },
          child: Container(
            height: 40,
            width: 100,
            color: themeColorBlue,
            child: const Center(
              child: Text("Delete Course"),
            ),
          ),
        ),
      ],
      doyouwantActionButton:false);
}