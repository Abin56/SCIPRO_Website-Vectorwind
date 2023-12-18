import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/study_material_controller.dart/study_material_controller.dart';
import 'package:scipro_website/data/video_management/folder_model.dart';
import 'package:scipro_website/view/admin_panel/studyMaterials_management/pdf_folder/pdf_second_dialogbox/showing_pdf.dart';
import 'package:scipro_website/view/widgets/grid_table_container/grid_table_container.dart';

class ListOfPdfFirstDialogBox extends StatelessWidget {
  const ListOfPdfFirstDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    // final data = Get.find<StudyMaterialController>().foldersList;
    return SizedBox(
      width: 600,
      child: GridTableContainer(
          headerList: const [
            ListViewTableHeaderWidget(width: 100, headerTitle: '  NO'),
            ListViewTableHeaderWidget(width: 500, headerTitle: 'PDF NAME'),
          ],
          listview: StreamBuilder<List<FolderModel>>(
              stream:
                  Get.find<StudyMaterialController>().fetchAllFoldersStream(),
              builder: (context, snapshot) {
                return ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () async {
                          Get.find<StudyMaterialController>().selectedFolder =
                              snapshot.data?[index];
                          await Get.find<StudyMaterialController>()
                              .fetchAllStudyMaterials()
                              .then((value) => showingPdfList(context));
                        },
                        child: SizedBox(
                            height: 80,
                            child: Row(
                              children: [
                                DataContainerWidget(
                                  index: index,
                                  width: 100,
                                  headerTitle:
                                      snapshot.data?[index].position ?? '',
                                ),
                                DataContainerWidget(
                                  index: index,
                                  width: 500,
                                  headerTitle:
                                      snapshot.data?[index].folderName ?? '',
                                ),
                              ],
                            )),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox();
                    },
                    itemCount: snapshot.data?.length ?? 0);
              })),
    );
  }
}
