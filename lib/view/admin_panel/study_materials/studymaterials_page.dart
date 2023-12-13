import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scipro_website/resources/assets_manager.dart';
import 'package:scipro_website/view/admin_panel/study_materials/subject_page.dart';
import 'package:scipro_website/view/fonts/google_monstre.dart';
import 'package:scipro_website/view/widgets/common_button_widget.dart';

class StudyMaterialsPage extends StatelessWidget {
  const StudyMaterialsPage({super.key});

  void subjectShowDialog(BuildContext context, String docName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Subject'),
          content: Container(
            width: double.maxFinite,
            height: 300,
            child: StreamBuilder(
              stream: FirebaseFirestore.instance
                  .collection('recorded_course')
                  .doc(docName)
                  .collection('course')
                  .snapshots(),
              builder: (BuildContext context,
                  AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }

                if (snapshot.hasError) {
                  return Center(
                    child: Text('Error: ${snapshot.error}'),
                  );
                }

                var documents = snapshot.data?.docs ?? [];

                return ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: (context, index) {
                    var data = documents[index].data() as Map<String, dynamic>;

                    // Customize this part based on your data model
                    return Container(
                      color: Colors.grey,
                      child: ListTile(
                        title: GoogleMonstserratWidgets(
                          text: data['position'],
                          fontsize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                        trailing: CommonButtonWidget(
                            color: Color.fromARGB(255, 26, 47, 90),
                            text: 'Select',
                            textColor: Colors.white,
                            onPressFunction: () {}),
                      ),
                    );
                  },
                );
              },
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Image.asset(
            ImageAssets.studyMaterials,
            width: 80,
            height: 80,
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 50,
            child: CommonButtonWidget(
                color: Color.fromARGB(255, 26, 47, 90),
                text: 'Upload Study Materials',
                textColor: Colors.white,
                onPressFunction: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Select Course'),
                        content: Container(
                          width: double.maxFinite,
                          height: 300,
                          child: StreamBuilder(
                            stream: FirebaseFirestore.instance
                                .collection('recorded_course')
                                .snapshots(),
                            builder: (BuildContext context,
                                AsyncSnapshot<QuerySnapshot> snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              }

                              if (snapshot.hasError) {
                                return Center(
                                  child: Text('Error: ${snapshot.error}'),
                                );
                              }

                              var documents = snapshot.data?.docs ?? [];

                              return ListView.builder(
                                itemCount: documents.length,
                                itemBuilder: (context, index) {
                                  var data = documents[index].data()
                                      as Map<String, dynamic>;

                                  // Customize this part based on your data model
                                  return Container(
                                      color: Colors.grey,
                                      child: ListTile(
                                        title: GoogleMonstserratWidgets(
                                          text: data['name'],
                                          fontsize: 14,
                                          fontWeight: FontWeight.w500,
                                        ),
                                        trailing: CommonButtonWidget(
                                            color:
                                                Color.fromARGB(255, 26, 47, 90),
                                            text: 'Select',
                                            textColor: Colors.white,
                                            onPressFunction: () {
                                              Navigator.pop(context);
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SubjectPageStudyMaterials(
                                                            docID: data['id'],
                                                          )));
                                            }),
                                      ));
                                },
                              );
                            },
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                }),
          )
        ],
      ),
    );
  }
}
