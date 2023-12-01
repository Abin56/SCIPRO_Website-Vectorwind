import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

totalCategoryList(BuildContext context) {
  return customShowDilogBox(
      context: context,
      title: 'All Category List',
      children: [
        SizedBox(
          height: 300,
          width: 600,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => ontaponCategoryList(context),
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

ontaponCategoryList(BuildContext context) {
  TextEditingController videoNameController = TextEditingController();
  return customShowDilogBox(
      context: context,
      title: "Edit Category",
      children: [
        SizedBox(
          height: 400,
          width: 400,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              ResponsiveWebSite.isMobile(context)?Column(children: [
                 TextFormFiledContainerWidget(
                     controller: videoNameController,
                     hintText: 'Enter Category Name',
                     title: 'Change Category Name',
                     width: 250),
                 Padding(
                   padding: const EdgeInsets.only(left: 10, top: 20),
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
                 Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Column(
                  children: [
                    TextFormFiledContainerWidget(
                        controller: videoNameController,
                        hintText: 'Enter Position eg 1,2...',
                        title: 'Change Position',
                        width: 250),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
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
                  ],
                ),
              ),
                 
              ],):
            Row(
                children: [
                  TextFormFiledContainerWidget(
                      controller: videoNameController,
                      hintText: 'Enter Category Name',
                      title: 'Change Category Name',
                      width: 250),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 20),
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    TextFormFiledContainerWidget(
                        controller: videoNameController,
                        hintText: 'Enter Position eg 1,2...',
                        title: 'Change Position',
                        width: 250),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 20),
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
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  customShowDilogBox(
                      context: context,
                      title: "Alert",
                      children: [const Text('Do you want this Category ?')],
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
                        "Delete Category",
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
