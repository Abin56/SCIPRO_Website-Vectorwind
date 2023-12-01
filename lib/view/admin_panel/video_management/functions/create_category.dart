import 'package:flutter/material.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

import '../../../widgets/responsive/responsive.dart';
import '../create_rec_courses_list/create_rec_courses_list.dart';

createvideoCategory(BuildContext context)async{
  
  return customShowDilogBox(
                      context: context,
                      title: 'Create Category',
                      actiontext: 'Create',
                       actiononTapfuction: () {
                final key = formKey;

                
                if (key.currentState!.validate()) {}
              },
                      children: [
                        Form(
                          key: formKey,
                          child: TextFormFiledContainerWidget(
                            hintText: 'Enter Category Name',
                            title: 'Category Name',
                            width: 300,
                            validator: checkFieldEmpty,
                          ),
                        )
                      ],
                      doyouwantActionButton: true);

}




createvedioRecordedCourses(BuildContext context)
async
{

return customShowDilogBox(
              context: context,
              title: 'Create Recorded Courses',
              actiontext: 'Create',
              actiononTapfuction: () {
                final key = formKey;
                if (key.currentState!.validate()) {}
              },
              children: [
                ResponsiveWebSite.isMobile(context)
                    ? SingleChildScrollView(
                        child: Form(
                          key: formKey,
                          child: Column(children: [
                            recCousesWidget[0],
                            recCousesWidget[1],
                            recCousesWidget[2],
                            recCousesWidget[3],
                            recCousesWidget[4],
                            recCousesWidget[5],
                           
                          ]),
                        ),
                      )
                    : Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              height: 200,
                              child: Form(
                                key: formKey,
                                child: Column(children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(child: recCousesWidget[0]),
                                        Expanded(child: recCousesWidget[1]),
                                        Expanded(child: recCousesWidget[2]),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Expanded(child: recCousesWidget[3]),
                                        Expanded(child: recCousesWidget[4]),
                                        Expanded(child: recCousesWidget[5]),
                                      ],
                                    ),
                                  ),
                                 
                                ]),
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
              doyouwantActionButton: true);
}