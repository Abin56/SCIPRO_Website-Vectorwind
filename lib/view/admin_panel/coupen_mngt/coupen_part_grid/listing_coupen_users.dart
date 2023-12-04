import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/coupen_mngt/coupen_part_grid/coupen_grid.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';
import 'package:scipro_website/view/widgets/button%20container%20widget/button_container_widget.dart';
import 'package:scipro_website/view/widgets/responsive/responsive.dart';

class AllUsersForCoupenList extends StatelessWidget {
    //final ScrollController _horizontalController = ScrollController();

  const AllUsersForCoupenList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 130,
          color: const Color.fromARGB(255, 235, 231, 232),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25,left: 15),
                child: GooglePoppinsWidgets(text: "ALL USERS", fontsize: 14,fontWeight: FontWeight.w500,),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: ButtonContainerWidget(text: "Search",),
              )
            ],
          ),

        ),
        Padding( 
          padding: const EdgeInsets.only(top: 10),
          child: Container(
            child:
            
           ResponsiveWebSite.isMobile(context)? const SizedBox(
            height: 500,
             
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SizedBox(
              width: 400,
                child: AllUsersForCoupenShowing()),
            ),
          ):SingleChildScrollView(
            child:  Container(
              color: Colors.white,
              width: double.infinity,
              height: 500,
              child: const AllUsersForCoupenShowing(),
            ),
          ),
           
          ),
        ),
      ],
    );
  }
}