import 'package:flutter/material.dart';
import 'package:scipro_website/resources/assets_manager.dart';
import 'package:scipro_website/resources/color_manager.dart';
import 'package:scipro_website/view/sign_up/sign_up.dart';
import 'package:scipro_website/view/widgets/bottom_container.dart';
import 'package:scipro_website/view/widgets/common_button_widget.dart';
import 'package:scipro_website/view/widgets/common_textfield.dart';
import 'package:scipro_website/view/widgets/primary_font_widget.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

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
                      child: PrimaryFontWidget(
                          text: 'Sign In',
                          fontSize: 70,
                          fontweight: FontWeight.bold,
                          color: Colors.white),
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
            child: CommonTextField(hintText: 'Email ID', borderRadius: 10),
          ),
          Padding(
            padding: EdgeInsets.only(
                right: sWidth.width / 3,
                left: sWidth.width / 3,
                top: 25,
                bottom: 25),
            child: CommonTextField(hintText: 'Password', borderRadius: 10),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width / 2.4,
                right: MediaQuery.of(context).size.width / 2.4),
            child: CommonButtonWidget(
                onPressFunction: () {},
                color: ColorManager.primary,
                text: 'Sign In',
                textColor: Colors.black),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              PrimaryFontWidget(
                  text: 'Don\'t have an account?',
                  fontSize: 12,
                  fontweight: FontWeight.w500,
                  color: Colors.black),
              TextButton(
                onPressed: () {
                  signUpFunction(context);
                },
                child: PrimaryFontWidget(
                    text: 'Sign Up',
                    fontSize: 13,
                    fontweight: FontWeight.w500,
                    color: ColorManager.primary),
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          BottomContainer()
        ],
      ),
    );
  }
}
