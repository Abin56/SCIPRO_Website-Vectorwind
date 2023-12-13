import 'dart:html' as html;

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scipro_website/firebase_options.dart';

import 'view/admin_panel/admin_panel.dart';
import 'view/home/footer/terms and conditions/termsandconditions.dart';

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
    return  GetMaterialApp(
        debugShowCheckedModeBanner: false,
          routes: {
         
          '/terms_condition': (context) => const TermsCondition(),
         
        },
         home: const AdminPanelPage()
    // home: const Scipro(),
        );
  }
}
