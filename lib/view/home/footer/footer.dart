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
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: const Column(
                      children: [
                        SciproContainerWidget(),
                        CompanyContainerWidget(),
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: SizedBox(
                              width: double.infinity,
                              child: ContactUsContainerWidget()),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: CopyRightContainerWidget(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          : ResponsiveWebSite.isTablet(context)
              ? Column(children: [
                  Expanded(
                      child: Container(
                          child: const Column(
                    children: [
                      SciproContainerWidget(),
                      CompanyContainerWidget(),
                      ContactUsContainerWidget()
                    ],
                  ))),
                  //
                  //
                  const CopyRightContainerWidget()
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


