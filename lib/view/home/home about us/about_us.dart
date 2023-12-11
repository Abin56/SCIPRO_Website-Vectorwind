import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

class HomeAboutUs extends StatelessWidget {
  const HomeAboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: cWhite,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GooglePoppinsWidgets(
              text: 'About Us',
              fontsize: 20,
              fontWeight: FontWeight.bold,
              color: themeColorBlue,
            ),
            ResponsiveWebSite.isMobile(context)
                ? GooglePoppinsWidgets(
                    text: 'Qualified And Highly\nEquipped Tutors ',
                    fontsize: 28,
                    fontWeight: FontWeight.bold,
                    color: cBlack,
                  )
                : GooglePoppinsWidgets(
                    text: 'Qualified And Highly\nEquipped Tutors ',
                    fontsize: 35,
                    fontWeight: FontWeight.bold,
                    color: cBlack,
                  ),
            ResponsiveWebSite.isMobile(context)
                ? Column(
                    children: [
                      Container(
                        height: 150,
                        width: 300,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: const DecorationImage(
                              image:
                                  AssetImage('images/mainarchanaartist1.jpg'),
                              fit: BoxFit.cover),
                        ),
                      ),
                      GooglePoppinsWidgets(
                          text:
                              'We, the team SciPro are well experienced professionals in research as well as education in various domains. As we have gone through different phases of education, we know how difficult to get into our dream position and what are the different steps we must go through. We provide courses for various competitive examinations, courses for advanced technologies that enusure a smooth landing in your dream runway. Our directors and faculties have PhD in various subjects, India and abroad research experiences, published many papers in many international publications. Some of our team members have reputable certifications in information security and advanced technologies. Our Vision and mission is, all the students have to get job or placed in suitable positions with lesser spending in education and we guide them to get through their dream journey with minimum cost.',
                          fontsize: 13)
                    ],
                  )
                : Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                            height:ResponsiveWebSite.isTablet(context)?  380:350,
                            width: 300,
                            child: GooglePoppinsWidgets(
                                text:
                                    'We, the team SciPro are well experienced professionals in research as well as education in various domains. As we have gone through different phases of education, we know how difficult to get into our dream position and what are the different steps we must go through. We provide courses for various competitive examinations, courses for advanced technologies that enusure a smooth landing in your dream runway. Our directors and faculties have PhD in various subjects, India and abroad research experiences, published many papers in many international publications. Some of our team members have reputable certifications in information security and advanced technologies. Our Vision and mission is, all the students have to get job or placed in suitable positions with lesser spending in education and we guide them to get through their dream journey with minimum cost.',
                                fontsize:ResponsiveWebSite.isTablet(context)? 14:16)),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: ResponsiveWebSite.isTablet(context)?  380:350,
                            width: 300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  image:
                                      AssetImage('images/mainarchanaartist1.jpg'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
