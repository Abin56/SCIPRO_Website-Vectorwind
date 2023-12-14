import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scipro_website/controller/subscribed_students_controller/model/subscribed_students_model.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/button_container_widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';

import '../../../../controller/subscribed_students_controller/model/user_after_subscription_model.dart';
import '../../../widgets/grid_table_container/grid_table_container.dart';

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
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: ButtonContainerWidget(
                  text: "Search",
                ),
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
                                viewDetail(context,data.uid);
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
                                          headerTitle: data.joindate),
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
  viewDetail(BuildContext context,String studentID){
    return    customShowDilogBox(context: context, title: 'Subscribed Students', children: [
                             
                                  // stream: FirebaseFirestore.instance.collection('SubscribedStudents').doc(studentID),
                                 
                                   StreamBuilder(
                                     stream: FirebaseFirestore.instance.collection('SubscribedStudents').doc(studentID).collection('PurchasedCourses').snapshots(),
                                     builder: (context,snapshots) {
                                       if(snapshots.hasData){
                                        
                                        return SizedBox(height: 500,width: 500,
                                         child: ListView.separated(itemBuilder: (BuildContext context, int index){
                                                      final data = UserAfterPaymentModel.fromMap(
                                snapshots.data!.docs[index].data());                        
                                         return  Container(decoration: BoxDecoration(
                                           border: Border.all(color: themeColorBlue)
                                         ),
                                                                              child: Column(children: [
                                           
                                           Padding(
                                              padding: const EdgeInsets.only(top:10,left: 10 ,right:10),
                                             child:Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [Container(
                                                 height: 30,width: 100,
                                                 color: themeColorBlue,
                                                 child: Expanded(child: Center(child: GooglePoppinsWidgets(text:data.coursename , fontsize: 15,color: cWhite,textAlign: TextAlign.center,fontWeight: FontWeight.bold,))),
                                               ),const Spacer(),
                                                 Expanded(child: GooglePoppinsWidgets(text: 'Expired Date:${data.expirydate}', fontsize: 14,fontWeight: FontWeight.w600,)),
                                               ],
                                             ),
                                           ),
                                           Padding(
                                             padding: const EdgeInsets.only(top:10,left: 10 ,right:10),
                                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Expanded(child: GooglePoppinsWidgets(text: 'Join Date:', fontsize: 14,fontWeight: FontWeight.w600,)),
                                                  Expanded(child: GooglePoppinsWidgets(text: data.joindate, fontsize: 14,)),
                                               ],
                                             ),
                                           ),
                                           Padding(
                                              padding: const EdgeInsets.only(top:10,left: 10 ,right:10),
                                             child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                               children: [
                                                 Expanded(child: GooglePoppinsWidgets(text: 'Course Fee:', fontsize: 14,fontWeight: FontWeight.w600,)),
                                                  Expanded(child: GooglePoppinsWidgets(text:data.coursefee.toString(), fontsize: 14,)),
                                               ],
                                             ),
                                           ),
                                            Padding(
                                               padding: const EdgeInsets.all(10),
                                              child: Row(
                                               children: [  GooglePoppinsWidgets(text: 'Status', fontsize: 14,fontWeight: FontWeight.w600,),
                                               const Spacer(),
                                                 Container(
                                                 height: 30,width: 100,
                                                 color: cGreen,
                                                 child: Expanded(child: Center(child: GooglePoppinsWidgets(text: data.deactive.toString(), fontsize: 13,color: cWhite,textAlign: TextAlign.center,fontWeight: FontWeight.bold,))),
                                               ),
                                               
                                               ],
                                                                                      ),
                                            ),
                                         ],),);
                                         }, separatorBuilder: (BuildContext context, int index) {
                                                                     return const SizedBox(height: 10,);
                                                                   }, itemCount: snapshots.data!.docs.length,
                                                                             ),
                                       );
                                       }else{
                                        return const Center(child:Text('No data Found'));
                                       }

                                       
                                     }
                                   ) ], doyouwantActionButton: true);
  }