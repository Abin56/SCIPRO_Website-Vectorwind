import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import 'table_grids/view_courses_grid.dart';

class RecordedCourses extends StatelessWidget {
  //final ScrollController _horizontalController = ScrollController();

  const RecordedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveWebSite.isMobile(context)
            ? Container(
                color: Colors.white,
                width: 400,
                height: 800,
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(width: 600, child: SampleWidget()),
                ),
              )
            : const SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  height: 500,
                  // color: const Color.fromARGB(255, 223, 107, 107),
                  child: SampleWidget(),
                ),
              ),
      ],
    );
  }
}
