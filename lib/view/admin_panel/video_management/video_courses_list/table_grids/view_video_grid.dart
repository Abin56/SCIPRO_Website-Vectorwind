import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/video_management/video_management_controller.dart';
import 'package:scipro_website/data/video_management/video_model.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class VideoListingGrid extends StatefulWidget {
  /// Creates the home page.
  const VideoListingGrid({Key? key}) : super(key: key);

  @override
  VideoListingGridState createState() => VideoListingGridState();
}

class VideoListingGridState extends State<VideoListingGrid> {
  // final DataGridController _gridController = DataGridController();

  @override
  void initState() {
    super.initState();

    // Get.find<VideoMangementController>().videoDataSource.value =
    //     VideoDataSource(
    //         videoData: Get.find<VideoMangementController>().vidoesList);
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      gridLinesVisibility: GridLinesVisibility.both,
      headerGridLinesVisibility: GridLinesVisibility.both,
      source: Get.find<VideoMangementController>().videoDataSource.value!,
      columns: <GridColumn>[
        GridColumn(
            width: 100,
            columnName: 'no',
            label: const GridVideoColumnContainerWidget(
              text: "NO.",
            )),
        GridColumn(
            columnName: 'videoname',
            label: const GridVideoColumnContainerWidget(
              text: "VIDEO NAME",
            )),
      ],
      columnWidthMode: ColumnWidthMode.fill,
      allowSorting: true,
      // onCellDoubleTap: ((details) {
      //   if (details.rowColumnIndex.rowIndex != 0) {}
      // }),
    );
  }
}

class GridVideoColumnContainerWidget extends StatelessWidget {
  final String text;
  const GridVideoColumnContainerWidget({
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

class Video {
  Video(
    this.context,
    this.no,
    this.videoname,
  );

  final int no;

  BuildContext context;
  final String videoname;
  // final int noofcourse;

  // final int date;
}

class VideoDataSource extends DataGridSource {
  int rowIndex = 0;

  VideoDataSource({required List<VideoModel> videoData}) {
    _videoData = videoData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(columnName: 'no', value: e.position),
              DataGridCell<String>(
                columnName: 'videoname',
                value: e.videoName,
              ),
              // DataGridCell<int>(columnName: 'noofcourse', value: e.noofcourse),
              // DataGridCell<int>(columnName: 'date', value: e.date),
            ]))
        .toList();
  }

  List<DataGridRow> _videoData = [];

  @override
  List<DataGridRow> get rows => _videoData;

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
