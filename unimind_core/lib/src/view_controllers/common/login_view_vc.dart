// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:unimind_core/unimind_core.dart';

class LoginViewVC extends GetxController {
  ServerController serverController = Get.find();
  LoginController loginController = Get.find();
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  // final FirebaseAuth _auth = FirebaseAuth.instance;
  // final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FacebookLogin facebookLogin = FacebookLogin();

  @override
  void onInit() {
    super.onInit();
    usernameController =
        TextEditingController(text: loginController.userX.value.email);
    loginController.getPreferences(
      emailController: usernameController,
      phoneController: passwordController,
    );
  }

  // Future<void> signInWithGoogle() async {
  //   try {
  //     GoogleSignInAccount googleSignInAccount = await _googleSignIn.signIn();
  //     GoogleSignInAuthentication googleSignInAuthentication =
  //         await googleSignInAccount.authentication;
  //     AuthCredential credential = GoogleAuthProvider.credential(
  //       accessToken: googleSignInAuthentication.accessToken,
  //       idToken: googleSignInAuthentication.idToken,
  //     );
  //     UserCredential userCredential = await _auth.signInWithCredential(credential);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  Future<void> signInWithFacebook(
      {Function(String?, String?)? existCallback}) async {
    final res = await facebookLogin.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);
    // final result = await facebookLogin.logIn(['email']);

    // switch (res.status) {
    //   case FacebookLoginStatus.success:
    //     final token = res.accessToken!.token;
    //     final graphResponse = await http.get(Uri.parse(
    //         'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email&access_token=$token'));
    //     FacebookInfo fbInfo = FacebookInfo.fromJson(graphResponse.body);
    //     if (fbInfo.email != "") {
    //       String response = await serverController.userController
    //           .existByEmailThunk(email: fbInfo.email!);
    //       if (response == "Exists") {
    //         existCallback?.call(fbInfo.email, fbInfo.id);
    //       } else {
    //         User user = User(
    //           fullname: fbInfo.name,
    //           email: fbInfo.email,
    //           generatedId: fbInfo.id,
    //           userType: UserType.PATIENT,
    //           username: token.substring(0, 13),
    //           password: token.substring(13, 26),
    //         );
    //         await serverController.userController.createThunk(
    //             user: user, patient: Patient(), isSavePreference: false);
    //         existCallback?.call(fbInfo.email, fbInfo.id);
    //       }
    //     }
    //     break;
    //   case FacebookLoginStatus.error:
    //     Get.back();
    //     break;
    //   case FacebookLoginStatus.cancel:
    //     // TODO: Handle this case.
    //     Get.back();
    //     break;
    // }
  }
}
