import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA_rMW4MS5zfe2UZvAX_3Q7ZbFf4ecxjNU",
            authDomain: "la-maison-cafe-2-38rmfl.firebaseapp.com",
            projectId: "la-maison-cafe-2-38rmfl",
            storageBucket: "la-maison-cafe-2-38rmfl.appspot.com",
            messagingSenderId: "921987569834",
            appId: "1:921987569834:web:ccda353ea66fc26c9818d3"));
  } else {
    await Firebase.initializeApp();
  }
}
