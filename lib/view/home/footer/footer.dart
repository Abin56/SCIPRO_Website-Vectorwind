import 'package:flutter/material.dart';
import 'package:scipro_website/view/home/footer/company/companycontainerWidget.dart';
import 'package:scipro_website/view/home/footer/contact%20us/contactus.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import 'copyright/copyrightwidget.dart';
import 'scipro container/scipro_container_widget.dart';

class FooterContainerWidget extends StatelessWidget {
  const FooterContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child:  ResponsiveWebSite.isMobile(context)?   const SingleChildScrollView(
          child: Column(children: [
           SizedBox(width: double.infinity,
             child: SciproContainerWidget()),
             SizedBox(width: double.infinity,
              child: CompanyContainerWidget()),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: SizedBox(width: double.infinity,
              child: ContactUsContainerWidget()),
          ),
            CopyRightContainerWidget()
            
           
          ],),
        ):
           SingleChildScrollView(
             child: Column(
               children: [
                 Container(color: cWhite,
                   child:   Row(
                    children: [
                       Expanded(
                          child: SizedBox(
                        height:ResponsiveWebSite.isTablet(context)? 750:500,
                        child: const SciproContainerWidget(),
                      )),
                      Expanded(
                          child: SizedBox(
                        height: ResponsiveWebSite.isTablet(context)? 750:500,
                       
                         
                          child: const CompanyContainerWidget(),
                        
                        
                      )),
                       Expanded(
                          child:
                              SizedBox(
                                height:ResponsiveWebSite.isTablet(context)? 750:500,
                                 child: const ContactUsContainerWidget()))
                    ],
                             ),
                 ),
                           const CopyRightContainerWidget()
               ],
             ),
           ),
          
          
        
      ),
    );
  }
}


