import 'dart:html' as html;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/firebase_options.dart';
import 'package:scipro_website/view/home/footer/company/privacy%20policy/privacy_policy.dart';

import 'view/home/footer/company/terms and conditions/termsandconditions.dart';
import 'view/home/sciprohomepage.dart';

Future<void> main() async {
  html.document.title = 'SCI PRO';
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      scrollBehavior: MyCustomScrollBehavior(),
      title: 'SciPRO',
      debugShowCheckedModeBanner: false,
      routes: {
        '/terms_condition': (context) => const TermsCondition(),
        '/privacy_policy': (context) => const PrivacyPolicy(),
      },
    // home: const AdminPanelPage(),
       home: SciproHomePage(),
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
