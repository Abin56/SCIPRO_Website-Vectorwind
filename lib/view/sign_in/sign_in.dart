import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/sign_in_controller/auth_controller.dart';
import 'package:scipro_website/resources/assets_manager.dart';
import 'package:scipro_website/resources/color_manager.dart';
import 'package:scipro_website/view/admin_panel/admin_panel.dart';
import 'package:scipro_website/view/fonts/google_monstre.dart';
import 'package:scipro_website/view/widgets/bottom_container.dart';
import 'package:scipro_website/view/widgets/common_button_widget.dart';
import 'package:scipro_website/view/widgets/common_textfield.dart';
import 'package:scipro_website/view/widgets/primary_font_widget.dart';

import '../colors/colors.dart';
import '../constant/const.dart';
import '../constant/constant.validate.dart';
import '../fonts/google_poppins.dart';
import '../widgets/back_container/back_container.dart';
import '../widgets/textform_field_Widget/textformfieldWidget.dart';

// ignore: must_be_immutable
class SignInPage extends StatelessWidget {
  SignInPage({super.key});

  final AuthController authController = Get.put(AuthController());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String signInMessage = '';

  @override
  Widget build(BuildContext context) {
    Size sWidth = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 500,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(ImageAssets
                        .signincover), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 500,
                color: Colors.blue.withOpacity(0.7),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: GestureDetector(
                        onTap: () {
                          authController.signOut();
                        },
                        child: PrimaryFontWidget(
                            text: 'Sign In',
                            fontSize: 70,
                            fontweight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Obx(
                      () => Text(
                        authController.user.value != null
                            ? "Signed In: ${authController.user.value!.email}"
                            : "Not Signed In",
                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ],
                ),
                //
                // Adjust opacity and color as needed
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(
                right: sWidth.width / 3,
                left: sWidth.width / 3,
                top: 100,
                bottom: 25),
            child: CommonTextField(
                hintText: 'Email ID',
                borderRadius: 10,
                textController: emailController),
          ),
          Padding(
              padding: EdgeInsets.only(
                  right: sWidth.width / 3,
                  left: sWidth.width / 3,
                  top: 25,
                  bottom: 25),
              child: TextFormField(
                controller: passwordController,
                //focusNode: _focusNode,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color:
                          Colors.yellow, // Change the border color when focused
                    ),
                  ),
                ),
              )),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                if (authController.message.value != 'success') {
                  return Column(
                    children: [
                      GoogleMonstserratWidgets(
                        text: authController.message.value,
                        fontsize: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.red,
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  );
                } else {
                  return const SizedBox();
                }
              }),
            ],
          ),

          // Container(
          //   height: 50,
          //   width: 500,
          //   padding: EdgeInsets.only(
          //       left: MediaQuery.of(context).size.width / 2.4,
          //       right: MediaQuery.of(context).size.width / 2.4),
          //   child: MaterialButton(
          //     onPressed: () {},
          //     elevation: 5,
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       children: [
          //         Image.asset(
          //           'images/google.png',
          //           width: 25,
          //           height: 25,
          //         ),
          //         SizedBox(
          //           width: 10,
          //         ),
          //         GoogleMonstserratWidgets(
          //           text: 'Sign In with Google',
          //           fontsize: 15,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ],
          //     ),
          //     color: Colors.white,
          //   ),
          // ),
          Container(
            height: 50,
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.4,
                right: MediaQuery.of(context).size.width / 2.4),
            child: CommonButtonWidget(
                onPressFunction: () {
                  authController
                      .signInWithEmailAndPassword(
                          emailController.text, passwordController.text)
                      .then((value) {
                    if (value == 'success') {
                      log('value: $value');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AdminPanelPage()));
                    }
                  });
                },
                color: ColorManager.primary,
                text: 'Sign In',
                textColor: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  authController.resetPassword(emailController.text);
                },
                child: PrimaryFontWidget(
                  color: Colors.black,
                  text: 'Forgot Password?',
                  fontSize: 13,
                  fontweight: FontWeight.w500,
                ),
              ),
            ],
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     PrimaryFontWidget(
          //         text: 'Don\'t have an account?',
          //         fontSize: 12,
          //         fontweight: FontWeight.w500,
          //         color: Colors.black),
          //     TextButton(
          //       onPressed: () {
          //         signUpFunction(context);
          //       },
          //       child: PrimaryFontWidget(
          //           text: 'Sign Up',
          //           fontSize: 13,
          //           fontweight: FontWeight.w500,
          //           color: ColorManager.primary),
          //     )
          //   ],
          // ),
          const SizedBox(
            height: 50,
          ),
          const BottomContainer()
        ],
      ),
    );
  }
}

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
                                        ))).catchError((d){
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
                            onTap: ()async {
// Navigator.push(context, MaterialPageRoute(builder: (context) {
//                                                               return  ForgotPasswordScreen();
//                               },
//                               ));
                                              },
                            child: GooglePoppinsWidgets(text: "ForgetPassword ?", fontsize: 11)),
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

class ForgotPasswordScreen {
  const ForgotPasswordScreen();
}
