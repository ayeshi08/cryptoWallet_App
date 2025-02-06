import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  var user = Rx<User?>(null); // Reactive user state

  // Google Sign-In method
  Future<void> signInWithGoogle() async {
    try {
      // Initialize Google Sign-In
      final GoogleSignIn googleSignIn = GoogleSignIn();

      // Trigger the Google Sign-In process
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        // User canceled the sign-in
        return;
      }

      // Get authentication details from Google
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;

      // Create Firebase credential with the Google Auth details
      final OAuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in to Firebase with the credential
      final UserCredential userCredential = await FirebaseAuth.instance.signInWithCredential(credential);

      // Update the user state
      user.value = userCredential.user;
    } catch (e) {
      print("Error during Google sign-in: $e");
    }
  }

  // Sign out method
  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
    user.value = null; // Reset user state
  }
}
