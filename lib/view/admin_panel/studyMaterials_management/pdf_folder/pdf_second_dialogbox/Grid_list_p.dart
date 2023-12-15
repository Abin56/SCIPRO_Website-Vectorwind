import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/study_material_controller.dart/study_material_controller.dart';
import 'package:scipro_website/view/constant/const.dart';
import 'package:scipro_website/view/widgets/grid_table_container/grid_table_container.dart';

class ListofPdfSecondDialogBox extends StatelessWidget {
  const ListofPdfSecondDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    final data = Get.find<StudyMaterialController>().studyMaterialList;
    return SizedBox(
        width: 400,
        child: GridTableContainer(
          headerList: const [
            ListViewTableHeaderWidget(width: 100, headerTitle: '  NO'),
            ListViewTableHeaderWidget(width: 400, headerTitle: 'PDF NAME'),
            // ListViewTableHeaderWidget(width: 150, headerTitle: 'DATE'),
          ],
          listview: Obx(() =>
              Get.find<StudyMaterialController>().isStudyMaterialLoading.value
                  ? circularPIndicator
                  : ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
                        return SizedBox(
                            height: 80,
                            width: 300,
                            child: Row(
                              children: [
                                DataContainerWidget(
                                  index: index,
                                  width: 100,
                                  headerTitle: data[index].position,
                                ),
                                DataContainerWidget(
                                  index: index,
                                  width: 400,
                                  headerTitle: data[index].pdfName,
                                ),
                                // DataContainerWidget(
                                //   index: index,
                                //   width: 150,
                                //   headerTitle: 'data.createdDate.toString()',
                                // ),
                              ],
                            ));
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox();
                      },
                      itemCount: data.length)),
        ));
  }
}
