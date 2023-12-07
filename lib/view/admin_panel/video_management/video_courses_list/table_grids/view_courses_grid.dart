import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/video_management/video_management_controller.dart';
import 'package:scipro_website/data/video_management/course_model.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/video_folder/create_videoFolder.dart';
import 'package:scipro_website/view/constant/constant.validate.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ViewCoursesList extends StatefulWidget {
  /// Creates the home page.
  const ViewCoursesList({Key? key}) : super(key: key);

  @override
  ViewCoursesListState createState() => ViewCoursesListState();
}

class ViewCoursesListState extends State<ViewCoursesList> {
  final DataGridController gridController = DataGridController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Get.find<VideoMangementController>().courseDataSource.value == null
          ? const SizedBox()
          : SfDataGrid(
              controller: gridController,
              gridLinesVisibility: GridLinesVisibility.both,
              headerGridLinesVisibility: GridLinesVisibility.both,
              source:
                  Get.find<VideoMangementController>().courseDataSource.value!,
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
                GridColumn(
                    columnName: 'date',
                    label: const GridCourseColumnContainerWidget(
                      text: 'DATE',
                    )),
              ],
              columnWidthMode: ColumnWidthMode.fill,
              allowSorting: true,
              onCellDoubleTap: ((details) {
                viewVideoFolder(context);
              }),
            ),
    );
  }
}

class CourseDataSource extends DataGridSource {
  int rowIndex = 0;

  CourseDataSource({required List<CourseModel> courseData}) {
    _courseData = courseData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'no', value: e.position),
              DataGridCell<String>(
                columnName: 'coursename',
                value: e.courseName,
              ),
              DataGridCell<int>(columnName: 'noofvideos', value: e.position),
              DataGridCell<String>(
                  columnName: 'date', value: timestampToDate(e.createdDate)),
              DataGridCell<String>(columnName: 'courseId', value: e.id),
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
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          //overflow: TextOverflow.ellipsis,
        ));
  }
}
