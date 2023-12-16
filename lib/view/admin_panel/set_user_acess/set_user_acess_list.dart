import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/set_user_access_controller/set_user_controller.dart';
import 'package:scipro_website/data/video_management/category_model.dart';

import 'package:scipro_website/view/widgets/custom_showDilog/custom_showdilog.dart';

import '../../../controller/set_user_access_controller/model/set_user_access_model.dart';
import '../../constant/constant.validate.dart';
import '../../widgets/grid_table_container/grid_table_container.dart';

class SetUserAcess extends StatelessWidget {
final  SetUserAccessController setUserAccessController =
      Get.put(SetUserAccessController());
  SetUserAcess({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
