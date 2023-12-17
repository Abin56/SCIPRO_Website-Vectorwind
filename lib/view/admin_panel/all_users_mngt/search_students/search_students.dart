import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:scipro_website/controller/all_users_controller/model/all_users_model.dart';
import 'package:scipro_website/view/colors/colors.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';

class AllUsersSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(Icons.clear));
    return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('StudentProfileCollection')
            .where('name', isEqualTo: query)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  final data = StudentProfileCreationModel.fromMap(
                      snapshot.data!.docs[index].data());
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          border: Border.all(color: cGrey),
                          borderRadius: BorderRadius.circular(4)),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: GooglePoppinsWidgets(
                                fontsize: 15,
                                text: data.name,
                              ),
                            ),
                          ),
                          Expanded(
                            child: GooglePoppinsWidgets(
                              fontsize: 15,
                              text: data.email,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const Divider();
                },
                itemCount: 1);
          } else {
            return const Center(
              child: Text('No Data found'),
            );
          }
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return StreamBuilder(
        stream: FirebaseFirestore.instance
            .collection('StudentProfileCollection')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  final data = StudentProfileCreationModel.fromMap(
                      snapshot.data!.docs[index].data());
                  return Padding(
                    padding:
                        const EdgeInsets.only(right: 10, left: 10, top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[50],
                          border: Border.all(color: cGrey),
                          borderRadius: BorderRadius.circular(4)),
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: GooglePoppinsWidgets(
                                fontsize: 15,
                                text: data.name,
                              ),
                            ),
                          ),
                          Expanded(
                            child: GooglePoppinsWidgets(
                              fontsize: 15,
                              text: data.email,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 10,
                  );
                },
                itemCount: snapshot.data!.docs.length);
          } else {
            return const Center(
              child: Text('no data found'),
            );
          }
        });
  }
}
