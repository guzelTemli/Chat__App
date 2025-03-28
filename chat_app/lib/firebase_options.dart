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
    apiKey: 'AIzaSyA0cQbsdNXiiV-SZWtQ8lAbUaycPEEauqU',
    appId: '1:484400170183:web:734219121f71967f45aae2',
    messagingSenderId: '484400170183',
    projectId: 'chatapptute-3be4b',
    authDomain: 'chatapptute-3be4b.firebaseapp.com',
    storageBucket: 'chatapptute-3be4b.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBD0JwgWhAUo_8CcFasUe5vs8fqLVRns1Q',
    appId: '1:484400170183:android:3fb7c479250fc69545aae2',
    messagingSenderId: '484400170183',
    projectId: 'chatapptute-3be4b',
    storageBucket: 'chatapptute-3be4b.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAAnOisFiIkI10X_DvHjssy8ayr9Q2nwoo',
    appId: '1:484400170183:ios:e434ebf4c1842fb045aae2',
    messagingSenderId: '484400170183',
    projectId: 'chatapptute-3be4b',
    storageBucket: 'chatapptute-3be4b.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAAnOisFiIkI10X_DvHjssy8ayr9Q2nwoo',
    appId: '1:484400170183:ios:e434ebf4c1842fb045aae2',
    messagingSenderId: '484400170183',
    projectId: 'chatapptute-3be4b',
    storageBucket: 'chatapptute-3be4b.firebasestorage.app',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA0cQbsdNXiiV-SZWtQ8lAbUaycPEEauqU',
    appId: '1:484400170183:web:b26f8aac1a83774445aae2',
    messagingSenderId: '484400170183',
    projectId: 'chatapptute-3be4b',
    authDomain: 'chatapptute-3be4b.firebaseapp.com',
    storageBucket: 'chatapptute-3be4b.firebasestorage.app',
  );

}