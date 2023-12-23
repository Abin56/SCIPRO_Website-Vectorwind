import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:scipro_website/view/admin_panel/admin_panel.dart';
import 'package:scipro_website/view/sign_in/forget_password.dart';

import '../colors/colors.dart';
import '../constant/const.dart';
import '../constant/constant.validate.dart';
import '../fonts/google_poppins.dart';
import '../widgets/back_container/back_container.dart';
import '../widgets/textform_field_Widget/textformfieldWidget.dart';

// ignore: must_be_immutable

loginshowDilogueBox(BuildContext context) {
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      final GlobalKey<FormState> formKey = GlobalKey<FormState>();
      TextEditingController emailController = TextEditingController();
      TextEditingController passwordController = TextEditingController();
      return Form(
        key: formKey,
        child: AlertDialog(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GooglePoppinsWidgets(
                  text: 'LOGIN   TO     A D M I N P A N E L',
                  fontsize: 13,
                  fontWeight: FontWeight.w600),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: BackButtonContainerWidget(),
              ),
            ],
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                SizedBox(
                  height: 250,
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextFormFiledContainerWidget(
                        controller: emailController,
                        hintText: 'Enter your email',
                        title: 'EMAIL ID',
                        width: 250,
                        validator: checkFieldEmailIsValid,
                      ),
                      TextFormFiledContainerWidget(
                        controller: passwordController,
                        hintText: 'Enter your password',
                        title: 'PASSWORD',
                        width: 250,
                        validator: checkFieldPasswordIsValid,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 80, top: 20),
                        child: GestureDetector(
                          onTap: () {
                            if (formKey.currentState!.validate()) {
                              try {
                                FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailController.text.trim(),
                                        password:
                                            passwordController.text.trim())
                                    .then((value) => Navigator.push(context,
                                            MaterialPageRoute(
                                          builder: (context) {
                                            return const AdminPanelPage();
                                          },
                                        )))
                                    .catchError((d) {
                                  return showToast(msg: 'Invalid');
                                });
                                //     .catchError((d) {
                                //   return showToast(msg: 'Invalid');
                                // });
                              } catch (e) {
                                print("-------------------object");
                                showToast(msg: e.toString());
                                log(e.toString());
                              }
                            }
                          },
                          child: Container(
                            height: 30,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: themeColorBlue,
                            ),
                            child: Center(
                              child: GooglePoppinsWidgets(
                                  text: 'LOGIN',
                                  color: cWhite,
                                  fontsize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const Spacer(),
                          GestureDetector(
                              onTap: () async {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (context) {
                                    return const ForgotPasswordScreen();
                                  },
                                ));
                              },
                              child: GooglePoppinsWidgets(
                                  text: "ForgetPassword ?", fontsize: 11)),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
