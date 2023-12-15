import 'package:flutter/material.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/textform_field_Widget/textformfieldWidget.dart';

createFolderForStdMaterials(BuildContext context){
  customShowDilogBox(
    context: context, 
    title: "Create Folder", 
    children: [
      // SizedBox(
      //     height: ResponsiveWebSite.isDesktop(context) ? 200 : 300,
      //     width: ResponsiveWebSite.isDesktop(context) ? 400 : 200,
      //     child:Column(children: [
      TextFormFiledContainerWidget(
           // controller: courseNameTextController,
            hintText: "Folder Name",
            title: "Folder Name",
            width: 200,
            validator: checkFieldEmpty,
          ),
          TextFormFiledContainerWidget(
                   // controller: positionController,
                    hintText: 'Enter Position eg 1,2...',
                    title: 'Enter Position',
                    width: 200),
      //               ],)
      // ),
    ], 
     actiononTapfuction: () {},
      actiontext: 'Create Folder',
    doyouwantActionButton: true);
}