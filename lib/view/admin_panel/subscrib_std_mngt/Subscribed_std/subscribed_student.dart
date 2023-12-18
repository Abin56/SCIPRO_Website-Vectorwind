// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/get_invoice_controller/get_invoice_controller.dart';
import 'package:scipro_website/controller/subscribed_students_controller/model/subscribed_students_model.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/button_container_widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
import 'package:scipro_website/view/widgets/textform_field_Widget/textformfieldWidget.dart';

import '../../../widgets/grid_table_container/grid_table_container.dart';
import '../subscribed_students_showdialog.dart';

class SubscribedStd extends StatelessWidget {
  //final ScrollController _horizontalController = ScrollController();

  const SubscribedStd({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 130,
          color: const Color.fromARGB(255, 235, 231, 232),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 15),
                child: GooglePoppinsWidgets(
                  text: "SUBSCRIBED STUDENTS",
                  fontsize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
               Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Padding(
                    padding: EdgeInsets.only(top: 15),
                    child:  GestureDetector(
         onTap: ()async{
      //  await  searchStudents(context);
        },
        child: Container(
            decoration: const BoxDecoration(
              color: themeColorBlue,
              borderRadius: BorderRadius.horizontal(),
            ),
            width: ResponsiveWebSite.isMobile(context) ? 150 : 200,
            height: 30,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.search,
                    size: 14,
                    color: cWhite,
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: GooglePoppinsWidgets(
                      textAlign: TextAlign.center,
                      color: cWhite,
                      fontWeight: FontWeight.w500,
                      text: 'search',
                      fontsize: 12,
                    ),
                  ),
                ),
              ],
            )),
      ),
                  ),
                  GestureDetector(onTap: (){
invoiceSettingsshowDialog(context);
                  },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: ButtonContainerWidget(
                        text: "Invoice Settings",
                      ),
                    ),
                  ),
                  
                ],
              )
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: GridTableContainer(
              headerList: const [
                ListViewTableHeaderWidget(width: 100, headerTitle: 'No.'),
                ListViewTableHeaderWidget(width: 250, headerTitle: 'User Name'),
                ListViewTableHeaderWidget(width: 250, headerTitle: 'Email'),
                ListViewTableHeaderWidget(width: 250, headerTitle: 'Phone No.'),
                ListViewTableHeaderWidget(width: 250, headerTitle: 'Join date'),
              ],
              listview: StreamBuilder(
                  stream: FirebaseFirestore.instance
                      .collection('SubscribedStudents')
                      .snapshots(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return ListView.separated(
                          itemBuilder: (BuildContext context, int index) {
                            final data = SubscribedStudentsModel.fromMap(
                                snapshot.data!.docs[index].data());
                            return GestureDetector(
                              onTap: () {
                                subscribedstudentdetaildialogbox(context, data.uid);
                              },
                              child: SizedBox(
                                  height: 80,
                                  child: Row(
                                    children: [
                                      DataContainerWidget(
                                        index: index,
                                        width: 100,
                                        headerTitle: '${index + 1}',
                                      ),
                                      DataContainerWidget(
                                          index: index,
                                          width: 250,
                                          headerTitle: data.studentname),
                                      DataContainerWidget(
                                          index: index,
                                          width: 250,
                                          headerTitle: data.email),
                                      DataContainerWidget(
                                          index: index,
                                          width: 250,
                                          headerTitle: data.phonenumber),
                                      DataContainerWidget(
                                          index: index,
                                          width: 250,
                                          headerTitle: dateConveter(DateTime.parse(data.joindate))),
                                    ],
                                  )),
                            );
                          },
                          separatorBuilder: (BuildContext context, int index) {
                            return const SizedBox();
                          },
                          itemCount: snapshot.data!.docs.length);
                    } else {
                      return const Center(
                        child: Text('No Subscribed Students'),
                      );
                    }
                  })),
        )
      ],
    );
  }
}

void invoiceSettingsshowDialog(BuildContext context){

  final GetInvoiceController getinvoicenumbercontroller=Get.put(GetInvoiceController());
  return customShowDilogBox(context: context, title: 'Invoice number', children: [
    StreamBuilder(
      stream: FirebaseFirestore.instance.collection('Invoice_number').snapshots(),
      builder: (context,snapshot) {
      if(snapshot.hasData){
          return 
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GooglePoppinsWidgets(text: snapshot.data!.docs[0].data()['number'].toString(), fontsize: 60,fontWeight: FontWeight.bold,),
          ],
        );

      }else{
       return const Center(child: Text('No data found'),);
      }
      }
    ),
    Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormFiledContainerWidget(hintText: 'Enter Invoice Number', title: 'Enter Invoice Number', width: 400,controller: getinvoicenumbercontroller.invoiceEnterController,),
    )
  ], doyouwantActionButton: true,actiontext: 'Set Number',actiononTapfuction: (){
   getinvoicenumbercontroller.setInvoiceNumber().then((value) => Navigator.pop(context));
    getinvoicenumbercontroller.invoiceEnterController.clear();
  });
}

