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
    apiKey: 'AIzaSyBCsiUO7guzaI8d67MLFA_aEhopdO2O1gI',
    appId: '1:807834015008:web:bf9094c7d7eb65da79b345',
    messagingSenderId: '807834015008',
    projectId: 'projectmobilekel5sem5-a25f4',
    authDomain: 'projectmobilekel5sem5-a25f4.firebaseapp.com',
    storageBucket: 'projectmobilekel5sem5-a25f4.appspot.com',
    measurementId: 'G-4M8DY7QFBE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCydHZKa0wPbXd8HpfPM6cF_O7olWkoYso',
    appId: '1:807834015008:android:a6c3320fba1e7e8a79b345',
    messagingSenderId: '807834015008',
    projectId: 'projectmobilekel5sem5-a25f4',
    storageBucket: 'projectmobilekel5sem5-a25f4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8KvUGyhp1lU6qPdSPFkoDMmUkQtaBGCY',
    appId: '1:807834015008:ios:613ca7bf568622e879b345',
    messagingSenderId: '807834015008',
    projectId: 'projectmobilekel5sem5-a25f4',
    storageBucket: 'projectmobilekel5sem5-a25f4.appspot.com',
    iosBundleId: 'com.example.kasirMobile5',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA8KvUGyhp1lU6qPdSPFkoDMmUkQtaBGCY',
    appId: '1:807834015008:ios:613ca7bf568622e879b345',
    messagingSenderId: '807834015008',
    projectId: 'projectmobilekel5sem5-a25f4',
    storageBucket: 'projectmobilekel5sem5-a25f4.appspot.com',
    iosBundleId: 'com.example.kasirMobile5',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBCsiUO7guzaI8d67MLFA_aEhopdO2O1gI',
    appId: '1:807834015008:web:b5598ca73fd2d79779b345',
    messagingSenderId: '807834015008',
    projectId: 'projectmobilekel5sem5-a25f4',
    authDomain: 'projectmobilekel5sem5-a25f4.firebaseapp.com',
    storageBucket: 'projectmobilekel5sem5-a25f4.appspot.com',
    measurementId: 'G-L0S68EP86P',
  );
}