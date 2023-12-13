// import 'package:flutter/material.dart';
// import 'package:scipro_website/resources/color_manager.dart';
// import 'package:scipro_website/view/widgets/common_button_widget.dart';
// import 'package:scipro_website/view/widgets/common_textfield.dart';
// import 'package:scipro_website/view/widgets/primary_font_widget.dart';
// import 'package:scipro_website/view/widgets/responsive_widget.dart';

// signUpFunction(BuildContext context) {
//   double screenWidth = MediaQuery.of(context).size.width;
//   double? containerWidth;
//   return showDialog(
//       context: context,
//       builder: (context) {
//         containerWidth = 600;
//         return ResponsiveWidget(
//           mScreen: AlertDialog(
//             title: Container(
//               height: 300,
//               width: containerWidth,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   PrimaryFontWidget(
//                       text: 'Sign Up',
//                       fontSize: 22,
//                       fontweight: FontWeight.bold,
//                       color: Colors.black),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Email Address',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.3,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Password',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.3,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Center(
//                     child: Container(
//                       height: 50,
//                       width: containerWidth! * 0.461,
//                       child: CommonButtonWidget(
//                           onPressFunction: () {},
//                           color: ColorManager.primary,
//                           text: 'Sign Up',
//                           textColor: Colors.white),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           mobileScreen: AlertDialog(
//             title: Container(
//               height: 300,
//               width: containerWidth,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   PrimaryFontWidget(
//                       text: 'Sign Up',
//                       fontSize: 22,
//                       fontweight: FontWeight.bold,
//                       color: Colors.black),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Email Address',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.38,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Password',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.38,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Center(
//                     child: Container(
//                       height: 50,
//                       width: containerWidth! * 0.461,
//                       child: CommonButtonWidget(
//                           onPressFunction: () {},
//                           color: ColorManager.primary,
//                           text: 'Sign Up',
//                           textColor: Colors.white),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           tabScreen: AlertDialog(
//             title: Container(
//               height: 300,
//               width: containerWidth,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   PrimaryFontWidget(
//                       text: 'Sign Up',
//                       fontSize: 22,
//                       fontweight: FontWeight.bold,
//                       color: Colors.black),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Email Address',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.461,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Password',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.461,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Center(
//                     child: Container(
//                       height: 50,
//                       width: containerWidth! * 0.461,
//                       child: CommonButtonWidget(
//                           onPressFunction: () {},
//                           color: ColorManager.primary,
//                           text: 'Sign Up',
//                           textColor: Colors.white),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           verySmallScreen: AlertDialog(
//             title: Container(
//               height: 300,
//               width: containerWidth,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   PrimaryFontWidget(
//                       text: 'Sign Up',
//                       fontSize: 22,
//                       fontweight: FontWeight.bold,
//                       color: Colors.black),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Email Address',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.461,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Password',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.461,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Center(
//                     child: Container(
//                       height: 50,
//                       width: containerWidth! * 0.461,
//                       child: CommonButtonWidget(
//                           onPressFunction: () {},
//                           color: ColorManager.primary,
//                           text: 'Sign Up',
//                           textColor: Colors.white),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           smallScreen: AlertDialog(
//             title: Container(
//               height: 300,
//               width: containerWidth,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   PrimaryFontWidget(
//                       text: 'Sign Up',
//                       fontSize: 22,
//                       fontweight: FontWeight.bold,
//                       color: Colors.black),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Email Address',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.461,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Password',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.461,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Center(
//                     child: Container(
//                       height: 50,
//                       width: containerWidth! * 0.461,
//                       child: CommonButtonWidget(
//                           onPressFunction: () {},
//                           color: ColorManager.primary,
//                           text: 'Sign Up',
//                           textColor: Colors.white),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           mediumScreen: AlertDialog(
//             title: Container(
//               height: 300,
//               width: containerWidth,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   PrimaryFontWidget(
//                       text: 'Sign Up',
//                       fontSize: 22,
//                       fontweight: FontWeight.bold,
//                       color: Colors.black),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Email Address',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.461,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Password',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.461,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Center(
//                     child: Container(
//                       height: 50,
//                       width: containerWidth! * 0.461,
//                       child: CommonButtonWidget(
//                           onPressFunction: () {},
//                           color: ColorManager.primary,
//                           text: 'Sign Up',
//                           textColor: Colors.white),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           largeScreen: AlertDialog(
//             title: Container(
//               height: 300,
//               width: containerWidth,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   PrimaryFontWidget(
//                       text: 'Sign Up',
//                       fontSize: 22,
//                       fontweight: FontWeight.bold,
//                       color: Colors.black),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Email Address',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.461,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           PrimaryFontWidget(
//                               text: 'Password',
//                               fontSize: 15,
//                               fontweight: FontWeight.w500,
//                               color: Colors.black),
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Container(
//                               width: containerWidth! * 0.461,
//                               child: CommonTextField(
//                                   hintText: '', borderRadius: 20)),
//                         ],
//                       )
//                     ],
//                   ),
//                   SizedBox(
//                     height: 50,
//                   ),
//                   Center(
//                     child: Container(
//                       height: 50,
//                       width: containerWidth! * 0.461,
//                       child: CommonButtonWidget(
//                           onPressFunction: () {},
//                           color: ColorManager.primary,
//                           text: 'Sign Up',
//                           textColor: Colors.white),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         );
//       });
// }
