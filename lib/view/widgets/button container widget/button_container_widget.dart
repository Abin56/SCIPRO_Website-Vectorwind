import 'package:flutter/widgets.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

import '../../fonts/google_poppins.dart';



class ButtonContainerWidget extends StatelessWidget {
final  String text;
  
 const ButtonContainerWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color:themeColorBlue,
        borderRadius: BorderRadius.horizontal() ,
      ),
      width: ResponsiveWebSite.isMobile(context)?150: 200,
      height: 30,
      child: Center(
        child: GooglePoppinsWidgets(
          textAlign: TextAlign.center,
          color: cWhite,
          fontWeight: FontWeight.w500,
          text: text,
          fontsize: 12,
        ),
      ),
    );
  }
}