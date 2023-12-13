// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../../widgets/primary_font_widget.dart';



class CompanyContainerWidget extends StatelessWidget {
  const CompanyContainerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
   // crossAxisAlignment: CrossAxisAlignment.center,
    
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 20,left: 20),
          child: ResponsiveWebSite.isTablet(context)?Container(alignment: Alignment.topLeft,child: GooglePoppinsWidgets(text: 'Company', fontsize: 18,color: cred,fontWeight: FontWeight.bold,),):
          Container(alignment: Alignment.center,child: GooglePoppinsWidgets(text: 'Company', fontsize: 18,color: cred,fontWeight: FontWeight.bold,),)
        ),
         Container(child: Padding(
           padding: ResponsiveWebSite.isDesktop(context)? const EdgeInsets.only(left: 150,top: 10):const EdgeInsets.only(left: 20,top: 10),
           child: Column(children: [
           
           
                          Padding(
                     padding: const EdgeInsets.only(top: 10),
                           child: CompanyRowWidget(text: 'Upcoming Courses', onTapFunction: () {  },),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 10),
                           child: CompanyRowWidget(text: 'Recorded Courses', onTapFunction: () {  },),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 10),
                           child: CompanyRowWidget(text: 'Privacy Policy', onTapFunction: () { Navigator.pushNamed(
                                                  context, '/privacy_policy'); },),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 10),
                           child: CompanyRowWidget(text: 'Terms and Conditions', onTapFunction: () { Navigator.pushNamed(
                                                  context, '/terms_condition'); },),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 10),
                           child: CompanyRowWidget(text: 'Cancellation policy', onTapFunction: () { Navigator.pushNamed(
                                                  context, '/terms_condition'); },),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 10),
                           child: CompanyRowWidget(text: 'White Board', onTapFunction: () { Navigator.pushNamed(
                                                  context, '/terms_condition'); },),
                         ),
           ],),
         ),)

        
        
      ],
    );
  }
}

class CompanyRowWidget extends StatelessWidget {
  String text;
  Function() onTapFunction;
   CompanyRowWidget({
    required this.text,
    required this.onTapFunction,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         const Icon(Icons.arrow_forward_ios,color: cGrey,),
        TextButton(
            onPressed: onTapFunction,
            child:  PrimaryFontWidget(
                text: text,
                fontSize: ResponsiveWebSite.isTablet(context)?12:14,
                fontweight: FontWeight.w500,
                color: cBlack)),
      ],
    );
  }
}