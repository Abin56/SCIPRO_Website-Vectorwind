import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/grid_table_container/grid_table_container.dart';

class ListofPdfSecondDialogBox extends StatelessWidget {
  const ListofPdfSecondDialogBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: GridTableContainer(
        headerList:  const [
            ListViewTableHeaderWidget(width: 100, headerTitle: '  NO'),
            ListViewTableHeaderWidget(
                width: 400, headerTitle: 'PDF NAME'),
           // ListViewTableHeaderWidget(width: 150, headerTitle: 'DATE'),
          ],
          listview:ListView.separated(
                      itemBuilder: (BuildContext context, int index) {
               
                        return SizedBox(
                            height: 80,
                            width: 300,
                            child: Row(
                              children: [
                                DataContainerWidget(
                                  index: index,
                                  width: 100,
                                  headerTitle: '${index + 1}',
                                ),
                                DataContainerWidget(
                                  index: index,
                                  width: 400,
                                  headerTitle: 'courseName',
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
                      itemCount: 13)
          ),
    );
  }
}