// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
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
    apiKey: 'AIzaSyAyJ8LhmcThYRcfjAeqc4fgVhgHJ2ADFgQ',
    appId: '1:189257982421:web:aeb084e946892df3ef5d5c',
    messagingSenderId: '189257982421',
    projectId: 'proyectostock-b55a1',
    authDomain: 'proyectostock-b55a1.firebaseapp.com',
    storageBucket: 'proyectostock-b55a1.appspot.com',
    measurementId: 'G-Z284B83Z8V',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAyJ8LhmcThYRcfjAeqc4fgVhgHJ2ADFgQ',
    appId: '1:189257982421:web:bc0fcb335d5a470aef5d5c',
    messagingSenderId: '189257982421',
    projectId: 'proyectostock-b55a1',
    authDomain: 'proyectostock-b55a1.firebaseapp.com',
    storageBucket: 'proyectostock-b55a1.appspot.com',
    measurementId: 'G-T577VPFK0J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAtxxSIjmrmHYIL_5aKxZ5JOwqjgYc0sYo',
    appId: '1:189257982421:android:e02e8fe227a0d5ccef5d5c',
    messagingSenderId: '189257982421',
    projectId: 'proyectostock-b55a1',
    storageBucket: 'proyectostock-b55a1.appspot.com',
  );

}