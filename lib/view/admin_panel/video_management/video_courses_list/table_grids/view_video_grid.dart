import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/video_management/upload_video/uploadvideo.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class VideoListingGrid extends StatefulWidget {
  /// Creates the home page.
  const VideoListingGrid({Key? key}) : super(key: key);

  @override
  VideoListingGridState createState() => VideoListingGridState();
}

class VideoListingGridState extends State<VideoListingGrid> {
  // final DataGridController _gridController = DataGridController();
  List<Video> videos = <Video>[];
  late VideoDataSource videoDataSource;

  @override
  void initState() {
    videos = getVideoData(context);

    super.initState();

    videoDataSource = VideoDataSource(videoData: videos);
  }

  @override
  Widget build(BuildContext context) {
    return SfDataGrid(
      gridLinesVisibility: GridLinesVisibility.both,
      headerGridLinesVisibility: GridLinesVisibility.both,
      source: videoDataSource,
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
      onCellTap: ((details) {
        if (details.rowColumnIndex.rowIndex != 0) {
          uploadVideoShowDilogue(context);
        }
      }),
    );
  }

  List<Video> getVideoData(BuildContext context) {
    return [
      Video(
        context,
        01,
        'Science',
      ),
      Video(
        context,
        02,
        'GK',
      ),
      Video(
        context,
        03,
        'Social Science',
      ),
      Video(
        context,
        04,
        'Maths',
      ),
      Video(
        context,
        05,
        'English',
      ),
    ];
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

  VideoDataSource({required List<Video> videoData}) {
    _videoData = videoData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<int>(columnName: 'no', value: e.no),
              DataGridCell<String>(
                columnName: 'videoname',
                value: e.videoname,
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
