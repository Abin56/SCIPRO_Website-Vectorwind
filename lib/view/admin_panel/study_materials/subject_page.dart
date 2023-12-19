import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/study_materials/upload_study_materials.dart';
import 'package:scipro_website/view/fonts/google_monstre.dart';
import 'package:scipro_website/view/widgets/common_button_widget.dart';

class SubjectPageStudyMaterials extends StatelessWidget {
  const SubjectPageStudyMaterials({Key? key, required this.docID}) : super(key: key);

  final String docID;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Subject'),
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('recorded_course')
            .doc(docID)
            .collection('course')
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (snapshot.hasError) {
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            log('Number of documents: ${snapshot.data?.docs.length}');
            return const Center(
              child: Text('No data available.'),
            );
          }

          return ListView.builder(
            itemCount: snapshot.data!.docs.length,
            itemBuilder: (context, index) {
              String courseName =
                  snapshot.data!.docs[index]['courseName'] ?? '';
              return ListTile(
                leading: Text((index + 1).toString()),
                title: GoogleMonstserratWidgets(
                  text: courseName,
                  fontsize: 15,
                  fontWeight: FontWeight.w500,
                ),
                trailing: CommonButtonWidget(
                    color: const Color.fromARGB(255, 26, 47, 90),
                    text: 'Select',
                    textColor: Colors.white,
                    onPressFunction: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PdfUploadScreen(
                                  courseDoc: docID,
                                  courseDoc2: snapshot.data!.docs[index]
                                      ['id'])));
                    }),
              );
            },
          );
        },
      ),
    );
  }
}
