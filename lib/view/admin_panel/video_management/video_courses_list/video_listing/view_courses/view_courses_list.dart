import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/video_management/video_courses_list/video_listing/video_section/video_grid.dart';
import 'package:scipro_website/view/admin_panel/video_management/video_courses_list/video_listing/view_courses/view_courses_grid.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';


class VideoListingContainer extends StatelessWidget {
    //final ScrollController _horizontalController = ScrollController();

  const VideoListingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:
     Column(
       children: [
        Row(
          children: [const Spacer(),
            Container(
              color: Colors.white,
              width: 300,
              height: 40,
              child: DropdownSearch(
                onChanged: (value)async{
            
                },
                selectedItem: 'Videos',
                items: const ['Videos','Courses'],
              )),
          ],
        ),
         ResponsiveWebSite.isMobile(context)? const SizedBox(
          height: 500,
           
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
            width: 400,
              child: ViewCoursesList()),
          ),
             ):const SingleChildScrollView(
          child:  SizedBox(
            width: double.infinity,
            height: 500,
           // color: const Color.fromARGB(255, 223, 107, 107),
            child: ViewCoursesList(),
          ),
             ),
       ],
     ),
   
    );
  }
}