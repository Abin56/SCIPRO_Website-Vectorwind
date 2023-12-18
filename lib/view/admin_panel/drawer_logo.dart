// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/home/sciprohomepage.dart';

class WebApplicationLogoContainer extends StatelessWidget {
  const WebApplicationLogoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 16, 36, 77),
      height: 130,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(
                  height: 80,
                  width: 60,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        GooglePoppinsWidgets(
                          text: "S C I ",
                          fontsize: 22,
                          color: cWhite,
                          fontWeight: FontWeight.w600,
                        ),
                        GooglePoppinsWidgets(
                          text: "P R O ",
                          fontsize: 16,
                          color: Colors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ],
                    ),
                    GooglePoppinsWidgets(
                      text: "Vector Wind",
                      fontsize: 11,
                      color: cWhite.withOpacity(0.5),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            height: 1,
            color: Color.fromARGB(255, 26, 47, 90),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 48,
                child: Center(
                  child: GooglePoppinsWidgets(
                    text: "Admin Panel  ",
                    fontsize: 12,
                    color: const Color.fromARGB(255, 117, 200, 236),
                  ),
                ),
              ),
              // const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () async {
                        Get.offAll(() => SciproHomePage());
                      },
                      icon: const Icon(Icons.power_settings_new),
                      color: const Color.fromARGB(255, 214, 23, 39),
                    ),
                    SizedBox(
                      height: 48,
                      child: Center(
                        child: GooglePoppinsWidgets(
                          text: "Logout",
                          fontsize: 10,
                          color: const Color.fromARGB(255, 117, 200, 236),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
