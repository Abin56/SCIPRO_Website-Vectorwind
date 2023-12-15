import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/studyMaterials_management/pdf_folder/pdf_second_dialogbox/showing_pdf.dart';
import 'package:scipro_website/view/widgets/grid_table_container/grid_table_container.dart';

class ListOfPdfFirstDialogBox extends StatelessWidget {
  const ListOfPdfFirstDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: GridTableContainer(
        headerList:  const [
            ListViewTableHeaderWidget(width: 100, headerTitle: '  NO'),
            ListViewTableHeaderWidget(
                width: 500, headerTitle: 'PDF NAME'),
            
          ],
          listview:ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
               
                        return GestureDetector(
                          onTap: () {
                            showingPdfList(context);
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
                                    width: 500,
                                    headerTitle: 'courseName',
                                  ),
                              
                                ],
                              )),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox();
                      },
                      itemCount: 13)
          ),
    );
  }
}