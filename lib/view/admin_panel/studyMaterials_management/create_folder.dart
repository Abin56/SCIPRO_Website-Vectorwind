import 'package:flutter/material.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

createFolderForStdMaterials(BuildContext context){
  customShowDilogBox(
    context: context, 
    title: "Create Folder", 
    children: [
      TextFormFiledContainerWidget(
           // controller: courseNameTextController,
            hintText: "Folder Name",
            title: "Folder Name",
            width: 200,
            validator: checkFieldEmpty,
          ),
    ], 
    doyouwantActionButton: true);
}