// ignore_for_file: unused_local_variable, duplicate_ignore

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TermsCondition extends StatelessWidget {
  const TermsCondition({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers, unused_local_variable
    final ScrollController _scrollController = ScrollController();
    double scrollPosition = 0;
    double opacity = 0;


    var screenSize = MediaQuery
        .of(context)
        .size;
    opacity = scrollPosition < screenSize.height * 0.70
        ? scrollPosition / (screenSize.height * 0.70)
        : 1;

    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          //flexibleSpace:
          // TopBarContents(
          //     _opacity)
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Center(
            child: Column(
              children: [

                const SizedBox(height: 30,),
                const Text("SCIPRO TERMS & CONDITIONS",
                  style:
                  TextStyle(color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),),
                const SizedBox(height: 10,),
                Image.asset("images/ov1.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov2.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov3.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov4.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov5.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov6.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov7.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov8.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov9.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov10.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov11.png"),
                const SizedBox(height: 10,),
                Image.asset("images/ov12.png"),
                const SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}