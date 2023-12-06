import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class PdfListingGrid extends StatefulWidget {
  /// Creates the home page.
  const PdfListingGrid({Key? key}) : super(key: key);

  @override
  PdfListingGridState createState() => PdfListingGridState();
}

class PdfListingGridState extends State<PdfListingGrid> {
  // final DataGridController _gridController = DataGridController();
  List<Pdf> pdfs = <Pdf>[];
  late PdfDataSource pdfDataSource;

  @override
  void initState() {
    pdfs = getPdfData(context);

    super.initState();

    pdfDataSource = PdfDataSource(pdfData: pdfs);
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      gridLinesVisibility: GridLinesVisibility.both,
      headerGridLinesVisibility: GridLinesVisibility.both,
      source: pdfDataSource,
      columns: <GridColumn>[
        GridColumn(
            width: 100,
            columnName: 'no',
            label: const GridPdfColumnContainerWidget(
              text: "NO.",
            )),
        GridColumn(
            columnName: 'pdfname',
            label: const GridPdfColumnContainerWidget(
              text: "PDF NAME",
            )),
      ],
      columnWidthMode: ColumnWidthMode.fill,
      allowSorting: true,
      // onCellDoubleTap: ((details) {
      //   if (details.rowColumnIndex.rowIndex != 0) {}
      // }),
    );
  }

  List<Pdf> getPdfData(BuildContext context) {
    return [
      Pdf(context,01,'Science', ),
      Pdf(context,02, 'GK',),
      Pdf(context,03, 'Social Science',),
      Pdf(context,04,'Maths',),
      Pdf(context,05,'English',),
      Pdf(context, 01,'Science',),
      Pdf(context,02,'GK',),
      Pdf(context,03,'Social Science',),
      Pdf(context,04,'Maths',),
      Pdf(context, 05,'English',),
    ];
  }
}

class GridPdfColumnContainerWidget extends StatelessWidget {
  final String text;
  const GridPdfColumnContainerWidget({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[100],
        padding: const EdgeInsets.all(16.0),
        alignment: Alignment.center,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
        ));
  }
}

class Pdf {
  Pdf(
    this.context,
    this.no,
    this.pdfname,
  );

  final int no;

  BuildContext context;
  final String pdfname;
  // final int noofcourse;

  // final int date;
}

class PdfDataSource extends DataGridSource {
  int rowIndex = 0;

  PdfDataSource({required List<Pdf> pdfData}) {
    _pdfData = pdfData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'no', value: e.no),
              DataGridCell<String>(
                columnName: 'pdfname',
                value: e.pdfname,
              ),
              // DataGridCell<int>(columnName: 'noofcourse', value: e.noofcourse),
              // DataGridCell<int>(columnName: 'date', value: e.date),
            ]))
        .toList();
  }

  List<DataGridRow> _pdfData = [];

  @override
  List<DataGridRow> get rows => _pdfData;

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
