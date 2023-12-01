import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class AllUsersShowing extends StatefulWidget {
  /// Creates the home page.
  const AllUsersShowing({Key? key}) : super(key: key);

  @override
  AllUsersShowingState createState() =>
      AllUsersShowingState();
}

class AllUsersShowingState extends State<AllUsersShowing> {
  final DataGridController _gridController = DataGridController();
  List<Allusers> allusers = <Allusers>[];
  late AllusersDataSource allusersDataSource;

  @override
  void initState() {
    super.initState();
    allusers = getAllusersData();
    allusersDataSource = AllusersDataSource(allusersData: allusers);
  }

  @override
  Widget build(BuildContext context) {
    return    SfDataGrid(
              controller: _gridController,
              defaultColumnWidth: ResponsiveWebSite.isDesktop(context)? 227: 150,
              gridLinesVisibility: GridLinesVisibility.both,
              headerGridLinesVisibility: GridLinesVisibility.both,
              source: allusersDataSource,
              columns: <GridColumn>[
                GridColumn(
                  width: 100,
                    columnName: 'no',
                    label: const AllUsersGridColumnWidget(text: "NO.",)),
                GridColumn(
                    columnName: 'name',
                    label:const AllUsersGridColumnWidget(text: "NAME",)),
                GridColumn(
                    columnName: 'course',
                    label: const AllUsersGridColumnWidget(text: "COURSES",)),
                GridColumn(
                    columnName: 'phonenumber',
                    label: const AllUsersGridColumnWidget(text: "PHONE NUMBER",)),
                GridColumn(
                    columnName: 'email',
                    label: const AllUsersGridColumnWidget(text: "EMAIL",)),
                GridColumn(
                    columnName: 'date',
                    label: const AllUsersGridColumnWidget(text: "DATE",)),
              ],
                allowSorting: true,
            
    );
  }

  List<Allusers> getAllusersData() {
    return [
      Allusers(01, 'Rakhi', 'fg', 3, 'M@gmail.com', 2),
      Allusers(02, 'Radha', 'dfgv', 3, 'f@gmail.com', 30),
      Allusers(03, 'Anoop', 'fgvfd', 3, 'S@gmail.com', 15),
      Allusers(04, 'Laila', 'dfgv', 3, '@gmail.com', 15),
      Allusers(05, 'Cerina Notes', 'fdg', 3, 'S@gmail.com', 1),
      Allusers(06, 'Rithik', 'fdg', 3, 'G@gmail.com', 10),
      Allusers(07, 'Snoop', 'fgvd', 3, 'C@gmail.com', 15),
      Allusers(08, 'Pranav', 'dfg', 3, 'H@gmail.com', 5),
    ];
  }
}

class AllUsersGridColumnWidget extends StatelessWidget {
  final String text;
  const AllUsersGridColumnWidget({
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

class Allusers {
  Allusers(
      this.no, this.name, this.course, this.phonenumber, this.email, this.date);

  
  final int no;
  final String name;
  final String course;
  final int phonenumber;
  final String email;
  final int date;
}

class AllusersDataSource extends DataGridSource {
  int rowIndex = 0;

 
  AllusersDataSource({required List<Allusers> allusersData}) {
    _studentData = allusersData
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


            