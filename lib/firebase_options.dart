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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBJ_MmAU24vsE0HHIIXVssz4Z1K-chtoQs',
    appId: '1:37851620542:web:20785c3b78c1eaf6b66aef',
    messagingSenderId: '37851620542',
    projectId: 'food-delivery-e-commerce-c8def',
    authDomain: 'food-delivery-e-commerce-c8def.firebaseapp.com',
    storageBucket: 'food-delivery-e-commerce-c8def.appspot.com',
    measurementId: 'G-NT22B8M45Z',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBsmxdvOl_zZtDoeFxT2rxcos5WbYbcpCQ',
    appId: '1:37851620542:android:e0b826c61dd56036b66aef',
    messagingSenderId: '37851620542',
    projectId: 'food-delivery-e-commerce-c8def',
    storageBucket: 'food-delivery-e-commerce-c8def.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB8ujnlHP-ybcJcMREWjNdZnI1IJyhSBWU',
    appId: '1:37851620542:ios:9ef05a19d1140c05b66aef',
    messagingSenderId: '37851620542',
    projectId: 'food-delivery-e-commerce-c8def',
    storageBucket: 'food-delivery-e-commerce-c8def.appspot.com',
    iosBundleId: 'com.example.foodDeliveryApp',
  );

}