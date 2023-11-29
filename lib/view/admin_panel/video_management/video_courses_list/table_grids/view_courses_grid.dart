import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/video_management/video_courses_list/show_videoList/showvideos_listing.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ViewCoursesList extends StatefulWidget {
  /// Creates the home page.
  const ViewCoursesList({Key? key}) : super(key: key);

  @override
  ViewCoursesListState createState() => ViewCoursesListState();
}

class ViewCoursesListState extends State<ViewCoursesList> {
  final DataGridController gridController = DataGridController();
  List<Course> courses = <Course>[];
  late CourseDataSource courseDataSource;

  @override
  void initState() {
    courses = getCourseData(context);

    super.initState();

    courseDataSource = CourseDataSource(courseData: courses);
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
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
      showBottomSheet(
              constraints: const BoxConstraints(maxWidth: double.infinity),
              context: context,
              builder: (BuildContext context) {
                return Container(
                  // height: 800,
                  color: Colors.white,
                  child: const VideoListingContainer(),
                );
              });
      }),
    );
  }

  List<Course> getCourseData(BuildContext context) {
    return [
      Course(context, 01, 'Science', 9, 2),
      Course(context, 02, 'GK', 3, 30),
      Course(context, 03, 'Social Science', 7, 15),
      Course(context, 04, 'Maths', 8, 15),
      Course(context, 05, 'English', 3, 1),
      Course(context, 01, 'Science', 9, 2),
      Course(context, 02, 'GK', 3, 30),
      Course(context, 03, 'Social Science', 7, 15),
      Course(context, 04, 'Maths', 8, 15),
      Course(context, 05, 'English', 3, 1),
    ];
  }
}

class Course {
  Course(this.context, this.no, this.coursename, this.noofvideos, this.date);

  final int no;

  BuildContext context;
  final String coursename;
  final int noofvideos;

  final int date;
}

class CourseDataSource extends DataGridSource {
  int rowIndex = 0;

  CourseDataSource({required List<Course> courseData}) {
    _courseData = courseData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'no', value: e.no),
              DataGridCell<String>(
                columnName: 'coursename',
                value: e.coursename,
              ),
              DataGridCell<int>(columnName: 'noofvideos', value: e.noofvideos),
              DataGridCell<int>(columnName: 'date', value: e.date),
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
