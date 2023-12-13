import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

final dataserver = FirebaseFirestore.instance;
final dataserverUserAuth = FirebaseAuth.instance.currentUser;
final dataserverStorage = FirebaseStorage.instance;
