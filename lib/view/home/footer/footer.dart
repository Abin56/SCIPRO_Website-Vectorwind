import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/home/footer/company/companycontainerWidget.dart';
import 'package:scipro_website/view/home/footer/contact%20us/contactus.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import 'copyright/copyrightwidget.dart';
import 'scipro container/scipro_container_widget.dart';

class FooterContainerWidget extends StatelessWidget {
   const FooterContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ResponsiveWebSite.isMobile(context)
          ? Column(
              children: [
                SizedBox(
                  
                  height: 1380,
                  width: double.infinity,
                  child:  Column(
                    children: [
                      Container(child: const SciproContainerWidget(),),
                      Container(child: const CompanyContainerWidget(),),
                       Container(child: const ContactUsContainerWidget() ,),
                    ],
                  ),
                )
              ],
            )
          : ResponsiveWebSite.isTablet(context)
              ? const Column(children: [
                  Expanded(
                      child: Column(
                    children: [
                      SciproContainerWidget(),
                      CompanyContainerWidget(),
                      ContactUsContainerWidget()
                    ],
                  )),
                  //
                  //
                  CopyRightContainerWidget()
                ])
              : Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: cWhite,
                        child: const Row(
                          children: [
                            Expanded(
                                child: SizedBox(
                              height: 600,
                              child: SciproContainerWidget(),
                            )),
                            Expanded(
                                child: SizedBox(
                              height: 600,
                              child: CompanyContainerWidget(),
                            )),
                            Expanded(
                                child: SizedBox(
                                    height: 600,
                                    child: ContactUsContainerWidget()))
                          ],
                        ),
                      ),
                    ),
                    const CopyRightContainerWidget()
                  ],
                ),
    );
  }
}
