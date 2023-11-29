import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/video_management/video_courses_list/view_courses/view_courses_grid.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

class RecordedCourses extends StatelessWidget {
  //final ScrollController _horizontalController = ScrollController();

  const RecordedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ResponsiveWebSite.isMobile(context)
            ? const SizedBox(
                width: 400,
                height: 500,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                      width: 400,
                      child: SingleChildScrollView(child: ViewCoursesList())),
                ),
              )
            : const SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  height: 500,
                  // color: const Color.fromARGB(255, 223, 107, 107),
                  child: ViewCoursesList(),
                ),
              ),
      ],
    );
  }
}
