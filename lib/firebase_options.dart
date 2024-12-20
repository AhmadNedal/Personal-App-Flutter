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
        return ios;
      case TargetPlatform.macOS:
        return macos;
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
    apiKey: 'AIzaSyAdZOaTFfJ5ALOwPEy7-RTGirFncqFkiH8',
    appId: '1:246631951924:web:e6ee3f362528d6b3c86461',
    messagingSenderId: '246631951924',
    projectId: 'first-82ff3',
    authDomain: 'first-82ff3.firebaseapp.com',
    storageBucket: 'first-82ff3.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDS-NtYNHtJJHrhwYj2h-PyZaK0o5uvHP0',
    appId: '1:246631951924:android:0ee08e01b4004b2ac86461',
    messagingSenderId: '246631951924',
    projectId: 'first-82ff3',
    storageBucket: 'first-82ff3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4kz6pBcXON4j7EjOr3wFCoOKFoiGLSxA',
    appId: '1:246631951924:ios:ed70417b728a9f67c86461',
    messagingSenderId: '246631951924',
    projectId: 'first-82ff3',
    storageBucket: 'first-82ff3.appspot.com',
    iosBundleId: 'com.example.ahmadapi',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4kz6pBcXON4j7EjOr3wFCoOKFoiGLSxA',
    appId: '1:246631951924:ios:ed70417b728a9f67c86461',
    messagingSenderId: '246631951924',
    projectId: 'first-82ff3',
    storageBucket: 'first-82ff3.appspot.com',
    iosBundleId: 'com.example.ahmadapi',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAdZOaTFfJ5ALOwPEy7-RTGirFncqFkiH8',
    appId: '1:246631951924:web:12ca542315cb9da4c86461',
    messagingSenderId: '246631951924',
    projectId: 'first-82ff3',
    authDomain: 'first-82ff3.firebaseapp.com',
    storageBucket: 'first-82ff3.appspot.com',
  );
}
