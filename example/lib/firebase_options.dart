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
    apiKey: 'AIzaSyBriHhCZh1pIEsrtTy_CUJYacADxD76a6Y',
    appId: '1:545222978350:web:8faf3e12704fdf2ec7a8bf',
    messagingSenderId: '545222978350',
    projectId: 'datn-5bcdd',
    authDomain: 'datn-5bcdd.firebaseapp.com',
    databaseURL: 'https://datn-5bcdd-default-rtdb.firebaseio.com',
    storageBucket: 'datn-5bcdd.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCEJo3xvdi2datXEyKshbiB0SYXN710Y-Q',
    appId: '1:545222978350:android:ae4b6ce0d1e8be99c7a8bf',
    messagingSenderId: '545222978350',
    projectId: 'datn-5bcdd',
    databaseURL: 'https://datn-5bcdd-default-rtdb.firebaseio.com',
    storageBucket: 'datn-5bcdd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA0x0XKi_-PlrHEa0HSCRVeWI1iGrD0Eic',
    appId: '1:545222978350:ios:abdd7c26e86e8b86c7a8bf',
    messagingSenderId: '545222978350',
    projectId: 'datn-5bcdd',
    databaseURL: 'https://datn-5bcdd-default-rtdb.firebaseio.com',
    storageBucket: 'datn-5bcdd.appspot.com',
    iosClientId: '545222978350-6n9dgaldka4g1ijuqbkqjm44sigoseqm.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA0x0XKi_-PlrHEa0HSCRVeWI1iGrD0Eic',
    appId: '1:545222978350:ios:abdd7c26e86e8b86c7a8bf',
    messagingSenderId: '545222978350',
    projectId: 'datn-5bcdd',
    databaseURL: 'https://datn-5bcdd-default-rtdb.firebaseio.com',
    storageBucket: 'datn-5bcdd.appspot.com',
    iosClientId: '545222978350-6n9dgaldka4g1ijuqbkqjm44sigoseqm.apps.googleusercontent.com',
    iosBundleId: 'com.example.app',
  );
}
