import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/video_management/upload_video/uploadvideo.dart';
import 'package:scipro_website/view/admin_panel/video_management/video_courses_list/table_grids/view_video_grid.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/back_container/back_container.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

class VideoListingContainer extends StatelessWidget {
  //final ScrollController _horizontalController = ScrollController();

  const VideoListingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: BackButtonContainerWidget(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GooglePoppinsWidgets(
            text: "Video Collection",
            fontsize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: [
            const Spacer(),
            GestureDetector(
              onTap: () {
                uploadVideoShowDilogue(context);
              },
              child: Container(
                height: 30,
                width: 200,
                decoration: const BoxDecoration(
                  color: themeColorBlue,
                ),
                child: Center(
                  child: GooglePoppinsWidgets(
                      text: 'Upload Video',
                      color: cWhite,
                      fontsize: 12,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
          child: Container(
            child: ResponsiveWebSite.isMobile(context)
                ? const SizedBox(
                    height: 500,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: SizedBox(width: 600, child: VideoListingGrid()),
                    ),
                  )
                : const SingleChildScrollView(
                    child: SizedBox(
                      width: double.infinity,
                      height: 500,
                      // color: const Color.fromARGB(255, 223, 107, 107),
                      child: VideoListingGrid(),
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
