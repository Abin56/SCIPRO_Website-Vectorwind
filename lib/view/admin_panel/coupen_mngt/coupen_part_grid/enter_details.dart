import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/coupen_mngt/coupen_part_grid/coupen_part.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/widgets/button%20container%20widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/textform%20feild%20Widget/textformfeildWidget.dart';

enterDetailsForCoupen(BuildContext context){
  TextEditingController courseNameTextController = TextEditingController();
  return customShowDilogBox(
    context: context, 
    title: "Enter Details", 
    children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormFiledContainerWidget(
                          controller: courseNameTextController ,
                          hintText: "Course Name",
                          title: "Couse Name",
                          width: 200,
                          validator: checkFieldEmpty,
                        ),
      ),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextFormFiledContainerWidget(
                         // controller: ,
                          hintText: "Discount %",
                          title: "Discount %",
                          width: 200,
                          validator: checkFieldEmpty,
                        ),
     ),
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: TextFormFiledContainerWidget(
                         // controller: ,
                          hintText: "Course Name",
                          title: "Couse Name",
                          width: 200,
                          validator: checkFieldEmpty,
                        ),
     ),     
     Padding(
       padding: const EdgeInsets.all(8.0),
       child: GestureDetector(
        onTap: (){
          Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const CoupenShowingPage ();
                            }));
        },
        child: const ButtonContainerWidget(text: "Coupen")),
     )                             
    ], 
    doyouwantActionButton: false);
}