import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/uploadvideo.dart';
import 'package:scipro_website/view/admin_panel/video_management/functions/video_folder/editanddelte_videos.dart';
import 'package:scipro_website/view/admin_panel/video_management/video_courses_list/table_grids/view_video_grid.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/back_container/back_container.dart';
import 'package:scipro_website/view/widgets/button%20container%20widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

showVideoList(BuildContext context) {
  List<Widget> showvideosWidgets = [
    GestureDetector(
        onTap: () => editdeletVideoList(context),
        child: const ButtonContainerWidget(text: "Settings")),
    GestureDetector(
        onTap: () => uploadVideoShowDilogue(context),
        child: const ButtonContainerWidget(text: "Upload Video"))
  ];
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
                text: "All Videos", fontsize: 13, fontWeight: FontWeight.w600),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ResponsiveWebSite.isMobile(context)
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const BackButtonContainerWidget(),
                        const SizedBox(
                          height: 20,
                        ),
                        showvideosWidgets[0],

                        ///  Setting
                        const SizedBox(
                          height: 10,
                        ),
                        showvideosWidgets[1], // Video Upload
                      ],
                    )
                  : Row(
                      children: [
                        const BackButtonContainerWidget(),
                        const Spacer(),
                        showvideosWidgets[0],

                        ///  Setting
                        const SizedBox(
                          width: 10,
                        ),
                        showvideosWidgets[1], // Video Upload
                      ],
                    ),
            )
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Container(
                height: 500,
                width: 600,
                color: Colors.white,
                child: const VideoListingGrid(),
              )
            ],
          ),
        ),
      );
    },
  );
}
