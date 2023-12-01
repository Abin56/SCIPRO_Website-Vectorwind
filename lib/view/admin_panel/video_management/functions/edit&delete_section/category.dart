import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

totalCategoryList(BuildContext context) {
  return customShowDilogBox(
      context: context,
      title: 'All Category List',
      children: [
        SizedBox(
          height: 400,
          width: double.infinity,
          child: ListView.separated(
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => ontaponCategoryList(context),
                  child: Container(
                    height: 40,
                    width: 300,
                    color: themeColorBlue,
                    child: const Row(
                      children: [
                        Text("Categoey Name"),
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

ontaponCategoryList(BuildContext context) {
  TextEditingController videoNameController = TextEditingController();
  return customShowDilogBox(
      context: context,
      title: "Edit Category",
      children: [
        TextFormFiledContainerWidget(
            controller: videoNameController,
            hintText: 'Enter Category Name',
            title: 'Change CategoryName',
            width: 200),
        TextFormFiledContainerWidget(
            controller: videoNameController,
            hintText: 'Enter video Position',
            title: 'Change Category Position (eg 1,2,..)',
            width: 200),
        GestureDetector(
          onTap: () {
            customShowDilogBox(
                context: context,
                title: "Alert",
                children: [const Text('Do you want this Category ?')],
                doyouwantActionButton: true,
                actiononTapfuction: () {});
          },
          child: Container(
            height: 40,
            width: 100,
            color: themeColorBlue,
            child: const Center(
              child: Text("Category video"),
            ),
          ),
        ),
      ],
      doyouwantActionButton:false);
}