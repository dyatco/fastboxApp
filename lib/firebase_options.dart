// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAFATDykqW2cQg5qMgpSaUJFfytKnD5mhg',
    appId: '1:55427095463:web:73bcf7b6a243c16c2cf482',
    messagingSenderId: '55427095463',
    projectId: 'fastboxappauth',
    authDomain: 'fastboxappauth.firebaseapp.com',
    storageBucket: 'fastboxappauth.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjGurJBQ2OZ6aVPLU2CbsXXpZHm4Q8Ylo',
    appId: '1:55427095463:android:d38367b164ae60b02cf482',
    messagingSenderId: '55427095463',
    projectId: 'fastboxappauth',
    storageBucket: 'fastboxappauth.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAfSU7Ak69HFa1oH-aOORuSG0I5WTREyAE',
    appId: '1:55427095463:ios:67217975870331b42cf482',
    messagingSenderId: '55427095463',
    projectId: 'fastboxappauth',
    storageBucket: 'fastboxappauth.appspot.com',
    iosClientId: '55427095463-bvb74l2h190jsrs3lj3o541jmssjlgea.apps.googleusercontent.com',
    iosBundleId: 'com.example.fastboxApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAfSU7Ak69HFa1oH-aOORuSG0I5WTREyAE',
    appId: '1:55427095463:ios:67217975870331b42cf482',
    messagingSenderId: '55427095463',
    projectId: 'fastboxappauth',
    storageBucket: 'fastboxappauth.appspot.com',
    iosClientId: '55427095463-bvb74l2h190jsrs3lj3o541jmssjlgea.apps.googleusercontent.com',
    iosBundleId: 'com.example.fastboxApp',
  );
}