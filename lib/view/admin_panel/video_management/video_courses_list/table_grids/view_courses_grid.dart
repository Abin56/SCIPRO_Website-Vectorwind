import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/video_management/recorded_course_controller.dart';
import 'package:scipro_website/view/widgets/circularProgressIncdicator/ciruclar_progress_indicator.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

import '../../../../../data/video_management/recorded_course_data.dart';

class ViewCoursesList extends StatefulWidget {
  /// Creates the home page.
  const ViewCoursesList({Key? key}) : super(key: key);

  @override
  ViewCoursesListState createState() => ViewCoursesListState();
}

class ViewCoursesListState extends State<ViewCoursesList> {
  final DataGridController gridController = DataGridController();
  late CourseDataSource courseDataSource;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      courseDataSource = CourseDataSource(
          courseData: Get.find<RecordedCourseController>().allCourses);
      return Get.find<RecordedCourseController>().isLoading.value
          ? circularProgressIndicator
          : Expanded(
              child: SfDataGrid(
                controller: gridController,
                gridLinesVisibility: GridLinesVisibility.both,
                headerGridLinesVisibility: GridLinesVisibility.both,
                source: courseDataSource,
                columns: <GridColumn>[
                  GridColumn(
                    width: 100,
                    columnName: 'no',
                    label: const GridCourseColumnContainerWidget(
                      text: "NO.",
                    ),
                  ),
                  GridColumn(
                      columnName: 'coursename',
                      label: const GridCourseColumnContainerWidget(
                        text: "COURSE NAME",
                      )),
                  GridColumn(
                      columnName: 'noofvideos',
                      label: const GridCourseColumnContainerWidget(
                        text: 'NO. OF VIDEOS',
                      )),
                  GridColumn(
                      columnName: 'date',
                      label: const GridCourseColumnContainerWidget(
                        text: 'DATE',
                      )),
                ],
                columnWidthMode: ColumnWidthMode.fill,
                allowSorting: true,
                onCellTap: ((details) {
                  if (details.rowColumnIndex.rowIndex != 0) {
                    // int selectedRowIndex = details.rowColumnIndex.rowIndex - 1;
                    // var row = courseDataSource.effectiveRows.elementAt(selectedRowIndex);
                    // hhhh(context);
                  }
                }),
              ),
            );
    });
  }
}

class CourseDataSource extends DataGridSource {
  int rowIndex = 0;

  CourseDataSource({required List<RecordedCoursesData> courseData}) {
    _courseData = courseData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'no', value: courseData.length),
              DataGridCell<String>(
                columnName: 'coursename',
                value: e.courseName,
              ),
              DataGridCell<int>(
                  columnName: 'noofvideos', value: e.videos.length),
              DataGridCell<int>(
                  columnName: 'date',
                  value: int.tryParse(e.postedDate.toString())),
            ]))
        .toList();
  }

  List<DataGridRow> _courseData = [];

  @override
  List<DataGridRow> get rows => _courseData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final isEvenRow = rowIndex.isEven;
    rowIndex++;
    return DataGridRowAdapter(
        color: isEvenRow ? Colors.white : Colors.blue[50],
        cells: row.getCells().map<Widget>((e) {
          return GestureDetector(
            onTap: () {},
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8.0),
              child: Text(e.value.toString()),
            ),
          );
        }).toList());
  }
}

class GridCourseColumnContainerWidget extends StatelessWidget {
  final String text;
  const GridCourseColumnContainerWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[100],
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: Text(
          text,
          //overflow: TextOverflow.ellipsis,
        ));
  }
}
