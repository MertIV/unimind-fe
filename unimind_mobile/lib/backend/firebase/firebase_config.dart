import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCAvZap8Varv00on94d1AvVrz6S_1tE9Bk",
            authDomain: "unimind-13215.firebaseapp.com",
            projectId: "unimind-13215",
            storageBucket: "unimind-13215.appspot.com",
            messagingSenderId: "290067497230",
            appId: "1:290067497230:web:500f34fbcc88f79199d75f",
            measurementId: "G-RPZX901C90"));
  } else {
    await Firebase.initializeApp();
  }
}
