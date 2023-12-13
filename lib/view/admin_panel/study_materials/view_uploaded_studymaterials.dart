import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/common_textfield.dart';

class ViewUploadedStudyMaterials extends StatelessWidget {
  ViewUploadedStudyMaterials(
      {super.key, required this.courseDoc1, required this.courseDoc2});

  final String courseDoc1;
  final String courseDoc2;
  final TextEditingController editConrtoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: FirebaseFirestore.instance
              .collection('recorded_course')
              .doc(courseDoc1)
              .collection('course')
              .doc(courseDoc2)
              .collection('StudyMaterials')
              .snapshots(),
          builder: (context, snap) {
            return ListView.builder(
                itemCount: snap.data!.docs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Text((index + 1).toString()),
                    title: Text(snap.data!.docs[index]['fileName']),
                    trailing: Expanded(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    editConrtoller.text =
                                        snap.data!.docs[index]['fileName'];
                                    return AlertDialog(
                                      title: const Text('Edit'),
                                      content: SizedBox(
                                        height: 200,
                                        width: 300,
                                        child: Column(
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
                                              child: CommonTextField(
                                                  hintText: '',
                                                  borderRadius: 10,
                                                  textController:
                                                      editConrtoller),
                                            ),
                                            const SizedBox(
                                              height: 10,
                                            ),
                                            Row(
                                              children: [
                                                ElevatedButton(
                                                    onPressed: () {
                                                      FirebaseFirestore.instance
                                                          .collection(
                                                              'recorded_course')
                                                          .doc(courseDoc1)
                                                          .collection('course')
                                                          .doc(courseDoc2)
                                                          .collection(
                                                              'StudyMaterials')
                                                          .doc(snap.data!
                                                                  .docs[index]
                                                              ['id'])
                                                          .update({
                                                        'fileName':
                                                            editConrtoller.text
                                                      }).then((value) =>
                                                              Navigator.pop(
                                                                  context));
                                                    },
                                                    child:
                                                        const Text('Update')),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text('Close'))
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            },
                            child: const Text('Edit'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            onPressed: () {
                              FirebaseFirestore.instance
                                  .collection('recorded_course')
                                  .doc(courseDoc1)
                                  .collection('course')
                                  .doc(courseDoc2)
                                  .collection('StudyMaterials')
                                  .doc(snap.data!.docs[index]['id'])
                                  .delete();
                            },
                            child: const Text('Delete'),
                          ),
                        ],
                      ),
                    ),
                  );
                });
          }),
    );
  }
}
