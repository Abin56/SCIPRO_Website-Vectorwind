import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../../widgets/primary_font_widget.dart';
import 'socialmediacontact.dart';

class SciproContainerWidget extends StatelessWidget {
  const SciproContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 10,right: 10,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
       crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 20),
            child:ResponsiveWebSite.isTablet(context)? Container(alignment: Alignment.topLeft,
              child: PrimaryFontWidget(
                  text: "SCIPRO",
                  fontSize: 18,
                  fontweight: FontWeight.bold,
                  color: Colors.red),
            ):PrimaryFontWidget(
                text: "SCIPRO",
                fontSize: 18,
                fontweight: FontWeight.bold,
                color: Colors.red),
          ),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20,left: 10),
                  child: PrimaryFontWidget(
                      text:
                          "We, the team scipro are well experienced professionals in research as well as education in various domains."
                                        "As we have gone through different phases of education, we know how difficult to get into our dream"
                                        "position and what are the different steps we must go through."
                                        "We provide courses for various competitive examinations, courses for advanced technologies that"
                                        "ensure a smooth landing in your dream runway."
                                        "Our directors &amp; faculties have PhD in various subjects, India and abroad research experiences,"
                                        " published many papers in many international publications."
                                        "Some of our team members have reputable certifications in information security and advanced "
                                        "technologies Our vision &amp; mission is, all the students have to get job or placed in suitable"
                                        " positions with lesserspending in education and we guide them to get through their dream journey"
                                        "with minimum cost.",
                      fontSize: ResponsiveWebSite.isTablet(context)?12:14,
                      fontweight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,left: 20),
            child: Row(
             children: [
             ResponsiveWebSite.isTablet(context)? Container(alignment: Alignment.center,
              child: SocialMediaContact(),) :Expanded(child: SocialMediaContact()),
             ],
                     ),
          )
        ],
      ),
    );
  }
}

