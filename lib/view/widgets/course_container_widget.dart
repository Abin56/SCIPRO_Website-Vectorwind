// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseShowcaseContainer extends StatelessWidget {
  CourseShowcaseContainer({super.key, required this.points});

  List<Widget> points;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          height: 800,
          // width: 600,
          child: Card(
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: points,
              ),
            ),
          )),
    );
  }
}

class CourseContainerWidget extends StatelessWidget {
  CourseContainerWidget(
      {super.key,
      required this.caption,
      required this.imagePath,
      this.height,
      this.width});

  String imagePath;
  String caption;
  double? width;
  double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage(imagePath), // Replace with your image asset
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              caption,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
