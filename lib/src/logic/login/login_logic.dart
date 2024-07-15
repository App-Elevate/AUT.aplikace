import 'package:coree/src/_conf/secure_storage.dart';
import 'package:coree/src/_global/app.dart';
import 'package:coree/src/logic/login/apple_sign_in_logic.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// Handles the sign out of the user.
Future<void> handleSignOut() async {
  if (FirebaseAuth.instance.currentUser != null &&
      FirebaseAuth.instance.currentUser!.providerData.any((element) => element.providerId == 'google.com')) {
    await App.googleSignIn.signOut();
  }
  if (FirebaseAuth.instance.currentUser != null &&
      FirebaseAuth.instance.currentUser!.providerData.any((element) => element.providerId == 'apple.com')) {
    App.secureStorage.delete(key: SecureStorage.appleAuthKey, iOptions: SecureStorage.options);
  }
  await FirebaseAuth.instance.signOut();
}

/// Handles the deletion of the user account. With delinking of Google and Apple sign in.
Future<void> handleAccountDeletion() async {
  if (FirebaseAuth.instance.currentUser != null &&
      FirebaseAuth.instance.currentUser!.providerData.any((element) => element.providerId == 'google.com')) {
    await App.googleSignIn.disconnect();
  }
  if (FirebaseAuth.instance.currentUser != null &&
      FirebaseAuth.instance.currentUser!.providerData.any((element) => element.providerId == 'apple.com')) {
    await revokeTokenApple();
  }
  await FirebaseAuth.instance.currentUser?.delete();
}
