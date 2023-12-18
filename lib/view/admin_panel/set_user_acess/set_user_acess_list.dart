import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/set_user_access_controller/set_user_controller.dart';

import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';

import '../../../controller/set_user_access_controller/model/set_user_access_model.dart';
import '../../colors/colors.dart';
import '../../constant/constant.validate.dart';
import '../../fonts/google_poppins.dart';
import '../../widgets/grid_table_container/grid_table_container.dart';
import '../../widgets/responsive/responsive.dart';

class SetUserAcess extends StatelessWidget {
final  SetUserAccessController setUserAccessController =
      Get.put(SetUserAccessController());
  SetUserAcess({super.key});

  @override
  Widget build(BuildContext context) {
     List<Widget> topVedioManagementBar = [
      ///////////////////
      //////
      ////
      Padding(
        padding:
            EdgeInsets.only(top: ResponsiveWebSite.isMobile(context) ? 5 : 40),
        child: Column(
          children: [
            GooglePoppinsWidgets(
              text: 'OFFLINE STUDENTS',
              fontsize: 16,
              fontWeight: FontWeight.bold,
            ),
           Container(
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
          ],
        ),
      ),

      GestureDetector(
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
    ];
    return Column(
      children: [
        Container(
          child: ResponsiveWebSite.isMobile(context)
              ? Column(children: [
                  Container(
                    height: 160,
                    width: double.infinity,
                    color: const Color.fromARGB(255, 247, 238, 243),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        topVedioManagementBar[0],
                     
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [],
                    ),
                  ),
                ])
              : Column(children: [
                  Container(
                    height: 130,
                    color: const Color.fromARGB(255, 247, 238, 243),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              topVedioManagementBar[0],
                            ],
                          ),
                        ),
                       
                      ],
                    ),
                  )
                ]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: GridTableContainer(
            headerList: const [
              ListViewTableHeaderWidget(width: 100, headerTitle: 'NO'),
              ListViewTableHeaderWidget(width: 300, headerTitle: 'Name'),
              ListViewTableHeaderWidget(width: 250, headerTitle: 'phone No'),
              ListViewTableHeaderWidget(width: 300, headerTitle: 'Email'),
              ListViewTableHeaderWidget(width: 200, headerTitle: 'Joining Date'),
            ],
            listview: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('StudentProfileCollection')
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.separated(
                        itemBuilder: (BuildContext context, int index) {
                          final data = SetUserAccessModel.fromMap(
                              snapshot.data!.docs[index].data());
                          return GestureDetector(
                            onTap: () {
                              setuserAccessShowDialog(
                                context,
                              );
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
                                        width: 300,
                                        headerTitle: data.name),
                                    DataContainerWidget(
                                        index: index,
                                        width: 250,
                                        headerTitle: data.phoneno),
                                    DataContainerWidget(
                                        index: index,
                                        width: 300,
                                        headerTitle: data.email),
                                    DataContainerWidget(
                                        index: index,
                                        width: 200,
                                        headerTitle: dateConveter(
                                            DateTime.parse(data.joindate))),
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
                      child: Text("No user list "),
                    );
                  }
                }),
          ),
        ),
      ],
    );
  }

  void setuserAccessShowDialog(
    BuildContext context,
  ) {
    customShowDilogBox(
        context: context,
        title: 'Courses',
        children: [
          
      // SizedBox(
      //     height: 35,
      //     width: 250,
      //     child: Center(
      //       child: DropdownSearch<CategoryModel>(
      //         autoValidateMode: AutovalidateMode.always,
      //         asyncItems: (value) {
      //           setUserAccessController.categoryModel.clear();

      //           return notificationManagementController.fetchRecCategory();
      //         },
      //         itemAsString: (value) => value.name,
      //         onChanged: (value) async {
      //           if (value != null) {
      //             notificationManagementController.selectedCat.value = value.id;
      //             log("message${value.id}");
      //           }
      //         },
      //         dropdownDecoratorProps: DropDownDecoratorProps(
      //             baseStyle: GoogleFonts.poppins(
      //                 fontSize: 13, color: Colors.black.withOpacity(0.7))),
      //       ),
      //     )),
               ],
        doyouwantActionButton: true);
  }
}

