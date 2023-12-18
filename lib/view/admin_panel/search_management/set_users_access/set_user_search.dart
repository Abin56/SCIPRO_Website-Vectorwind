import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/all_users_controller/alluser_controller.dart';
import 'package:scipro_website/controller/all_users_controller/model/all_users_model.dart';
import 'package:scipro_website/controller/subscribed_students_controller/model/subscribed_students_model.dart';
import 'package:scipro_website/controller/subscribed_students_controller/subscribed_controller.dart';
import 'package:scipro_website/view/fonts/google_poppins.dart';

class AllSubscribedStudentsSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    IconButton(
        onPressed: () {
          query = "";
        },
        icon: const Icon(
          Icons.clear,
          color: Colors.black,
        ));
    return null;
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<SubscribedStudentsModel> suggestionList;

    if (query.isEmpty) {
      suggestionList = Get.find<SubscribedStudentsController>().studentProfileList;
    } else {
      suggestionList = Get.find<SubscribedStudentsController>()
          .studentProfileList
          .where(
              (item) => item.email.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    if (suggestionList.isEmpty) {
      return ListTile(
        title: GooglePoppinsWidgets(
          text: "User not found",
          fontsize: 18,
          fontWeight: FontWeight.w400,
        ),
      );
    }
    return Scaffold(
      body: SafeArea(
        child: ListView.separated(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () async {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 10,
                  shadowColor: Colors.black,
                  shape: const BeveledRectangleBorder(),
                  child: ListTile(
                    leading: const Icon(Icons.school_outlined),
                    title: GooglePoppinsWidgets(
                      text: suggestionList[index].email,
                      fontsize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 10,
            );
          },
          itemCount: suggestionList.length,
        ),
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const SizedBox();
  }
}
