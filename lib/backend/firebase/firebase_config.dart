import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBfM_zc3DLNMI2OcKPs0Rj1QbYHyv-R4TA",
            authDomain: "frau-balance.firebaseapp.com",
            projectId: "frau-balance",
            storageBucket: "frau-balance.appspot.com",
            messagingSenderId: "1017382373837",
            appId: "1:1017382373837:web:20a38c395d31d2b4821c84",
            measurementId: "G-JE4MK8RQ9V"));
  } else {
    await Firebase.initializeApp();
  }
}
