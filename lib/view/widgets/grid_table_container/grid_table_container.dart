import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';

class GridTableContainer extends StatelessWidget {
  final List<Widget> headerList;
  final Widget? listview;

  const GridTableContainer(
      {super.key, required this.headerList, this.listview});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      width: 1300,
      decoration: BoxDecoration(
        color: cWhite,
        border: Border.all(
          color: cBlack.withOpacity(0.4),
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          children: [
            Expanded(
                child: SizedBox(
              width: 1298,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Row(
                      children: headerList,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 10, left: 20, right: 25, bottom: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: cBlack.withOpacity(0.3))),
                        child: listview,
                      ),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}

class ListViewTableHeaderWidget extends StatelessWidget {
  final String headerTitle;
  final double? width;

  const ListViewTableHeaderWidget({
    this.width,
    required this.headerTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: width,
      decoration: BoxDecoration(
          color: Colors.blue[100],
          border: Border.all(color: cBlack.withOpacity(0.5))),
      child: Center(
        child: Text(
          headerTitle,
          style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 13),
        ),
      ),
    );
  }
}

class DataContainerWidget extends StatelessWidget {
  final int index;
  final String headerTitle;
  final double? width;
  final Color? color;
  final double? height;

  const DataContainerWidget({
    required this.index,
    this.color,
    this.width,
    this.height,
    required this.headerTitle,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: index % 2 == 0
              ? Colors.grey.withOpacity(0.3)
              : Colors.blue.withOpacity(0.3),
          border: Border.all(color: cGrey.withOpacity(0.2))),
      child: Center(
        child: Text(
          headerTitle,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 12.5),
        ),
      ),
    );
  }
}
