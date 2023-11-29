import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class SubscribedStudentShowing extends StatefulWidget {
  /// Creates the home page.
  const SubscribedStudentShowing({Key? key}) : super(key: key);

  @override
  SubscribedStudentShowingState createState() =>
      SubscribedStudentShowingState();
}

class SubscribedStudentShowingState extends State<SubscribedStudentShowing> {
  final DataGridController _gridController = DataGridController();
  List<Student> students = <Student>[];
  late StudentDataSource studentDataSource;

  @override
  void initState() {
    super.initState();
    students = getStudentData();
    studentDataSource = StudentDataSource(studentData: students);
  }

  @override
  Widget build(BuildContext context) {
    return    SfDataGrid(
              controller: _gridController,
              defaultColumnWidth: ResponsiveWebSite.isDesktop(context)? 227: 150,
              gridLinesVisibility: GridLinesVisibility.both,
              headerGridLinesVisibility: GridLinesVisibility.both,
              source: studentDataSource,
              columns: <GridColumn>[
                GridColumn(
                  width: 100,
                    columnName: 'no',
                    label: const SubcribedstdGridColumnWidget(text: "NO.",)),
                GridColumn(
                    columnName: 'name',
                    label:const SubcribedstdGridColumnWidget(text: "NAME",)),
                GridColumn(
                    columnName: 'course',
                    label: const SubcribedstdGridColumnWidget(text: "COURSES",)),
                GridColumn(
                    columnName: 'phonenumber',
                    label: const SubcribedstdGridColumnWidget(text: "PHONE NUMBER",)),
                GridColumn(
                    columnName: 'email',
                    label: const SubcribedstdGridColumnWidget(text: "EMAIL",)),
                GridColumn(
                    columnName: 'date',
                    label: const SubcribedstdGridColumnWidget(text: "DATE",)),
              ],
                allowSorting: true,
            
    );
  }

  List<Student> getStudentData() {
    return [
      Student(01, 'Rakhi', 'fg', 3, 'M@gmail.com', 2),
      Student(02, 'Radha', 'dfgv', 3, 'f@gmail.com', 30),
      Student(03, 'Anoop', 'fgvfd', 3, 'S@gmail.com', 15),
      Student(04, 'Laila', 'dfgv', 3, '@gmail.com', 15),
      Student(05, 'Cerina Notes', 'fdg', 3, 'S@gmail.com', 1),
      Student(06, 'Rithik', 'fdg', 3, 'G@gmail.com', 10),
      Student(07, 'Snoop', 'fgvd', 3, 'C@gmail.com', 15),
      Student(08, 'Pranav', 'dfg', 3, 'H@gmail.com', 5),
    ];
  }
}

class SubcribedstdGridColumnWidget extends StatelessWidget {
  final String text;
  const SubcribedstdGridColumnWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[100],
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child:  Text(text, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          overflow: TextOverflow.ellipsis,
        ));
  }
}

class Student {
  Student(
      this.no, this.name, this.course, this.phonenumber, this.email, this.date);

  
  final int no;
  final String name;
  final String course;
  final int phonenumber;
  final String email;
  final int date;
}

class StudentDataSource extends DataGridSource {
  int rowIndex = 0;

 
  StudentDataSource({required List<Student> studentData}) {
    _studentData = studentData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'no', value: e.no),
              DataGridCell<String>(
                columnName: 'name',
                value: e.name,
              ),
              DataGridCell<String>(
                  columnName: 'course', value: e.course),
              DataGridCell<int>( columnName: 'phonenumber', value: e.phonenumber),
              DataGridCell<String>(columnName: 'email', value: e.email),
              DataGridCell<int>(columnName: 'date', value: e.date),
            ]))
        .toList();
  }

  List<DataGridRow> _studentData = [];

  @override
  List<DataGridRow> get rows => _studentData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    final isEvenRow = rowIndex.isEven;
    rowIndex++;
    return DataGridRowAdapter(
        color: isEvenRow ? Colors.white : Colors.blue[50],
        cells: row.getCells().map<Widget>((e) {
          return Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }
}


            