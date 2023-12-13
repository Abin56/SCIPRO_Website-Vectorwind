import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/controller/sign_in_controller/auth_controller.dart';
import 'package:scipro_website/view/fonts/google_monstre.dart';
import 'package:scipro_website/view/widgets/common_textfield.dart';
import 'package:scipro_website/view/widgets/primary_font_widget.dart';

class WelcomeAdminScreen extends StatelessWidget {
  WelcomeAdminScreen({super.key});

  final AuthController authController = Get.put(AuthController());
 final TextEditingController changeEmailController = TextEditingController();
final  TextEditingController changePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Obx(
            () => GoogleMonstserratWidgets(
              text: 'Welcome back, ${authController.user.value!.email}',
              fontsize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            print(authController.user.value!.email.toString());
          },
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: MediaQuery.of(context).size.width / 3,
                      left: MediaQuery.of(context).size.width / 3),
                  child: CommonTextField(
                      hintText: 'Enter new email',
                      borderRadius: 10,
                      textController: changeEmailController),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextButton(
                    onPressed: () {
                      // authController.updateEmail('hrithikmenon1998@gmail.com');
                      authController.user.value!
                          .verifyBeforeUpdateEmail(changeEmailController.text);
                    },
                    child: PrimaryFontWidget(
                      text: 'Change existing email',
                      fontSize: 14,
                      color: Colors.green,
                      fontweight: FontWeight.w500,
                    )),
              ],
            ),
          ),
        ));
  }
}
