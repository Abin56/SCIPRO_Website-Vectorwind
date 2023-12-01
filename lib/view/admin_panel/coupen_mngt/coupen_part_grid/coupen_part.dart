import 'package:flutter/material.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';

class CoupenShowingPage extends StatelessWidget {
  const CoupenShowingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: 300,
       decoration: BoxDecoration(
                gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    colors: [
                      Color.fromARGB(255, 1, 124, 253),
                      Color.fromARGB(255, 60, 59, 210)
                    ]),
                color: const Color.fromARGB(255, 60, 59, 210),
                borderRadius: BorderRadius.circular(20)),
                child: Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GooglePoppinsWidgets(text: "Discount", fontsize: 18,fontWeight: FontWeight.w500,),
                     GooglePoppinsWidgets(text: "12%", fontsize: 28,fontWeight: FontWeight.bold,),
                  ],
                ),
      ),
    );
  }
}