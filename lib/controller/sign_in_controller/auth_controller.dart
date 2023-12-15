import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Rx<User?> user = Rx<User?>(null);
  Rx<String> message = ''.obs;

  @override
  void onInit() {
    super.onInit();
    user.bindStream(_auth.authStateChanges());
  }

  Future<String> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      final UserCredential authResult = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      user.value = authResult.user;
      message.value = 'success';
      return 'success';
    } catch (e) {
      print("Email/Password Sign-In Error: $e");
      message.value =
          'Something went wrong. Make sure that you tried with correct proper credentials.';
      return '$e';
    }
  }

  Future<void> signOut() async {
    try {
      await _auth.signOut();
      user.value = null;
    } catch (e) {
      print("Sign Out Error: $e");
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      print("Password reset email sent to $email");
    } catch (e) {
      print("Password reset failed: $e");
    }
  }

  Future<void> updateEmail(String newEmail) async {
    if (user != null) {
      try {
        await _auth.currentUser!.updateEmail(newEmail);
      } catch (e) {
        print('Email updation failed $e');
      }
    } else {
      print("User not signed in");
    }
  }

  Future<String> verifyEmail(email) async {
    try {
      if (user != null && !user.value!.emailVerified) {
        await _auth.currentUser!.sendEmailVerification().then((value) {
          _auth.currentUser!.updateEmail(email);
        });

        print("Verification email sent to ${user.value!.email}");
      } else {
        print("User is already verified or user is null");
      }
    } catch (e) {
      print("Failed to send verification email: $e");
      return 'failed';
    }
    return 'success';
  }
}
