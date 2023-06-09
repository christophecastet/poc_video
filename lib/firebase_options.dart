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
    apiKey: 'AIzaSyAoovh_3RAYeI5eD16rT7RJgsZ1pwn4DK4',
    appId: '1:476041552524:web:144245471136fe21c0d1a9',
    messagingSenderId: '476041552524',
    projectId: 'pocvideo-dfc1a',
    authDomain: 'pocvideo-dfc1a.firebaseapp.com',
    storageBucket: 'pocvideo-dfc1a.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAjMg243mU5hW1AxwgrUspzNlxA9-8_PbA',
    appId: '1:476041552524:android:e656d9a5ee734b43c0d1a9',
    messagingSenderId: '476041552524',
    projectId: 'pocvideo-dfc1a',
    storageBucket: 'pocvideo-dfc1a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBWNADA7ChEsDUfyJuc0wtIR3dt3RxRwKI',
    appId: '1:476041552524:ios:c5c525087521f449c0d1a9',
    messagingSenderId: '476041552524',
    projectId: 'pocvideo-dfc1a',
    storageBucket: 'pocvideo-dfc1a.appspot.com',
    iosClientId: '476041552524-3d5isikfld59djbm2h3pr9jfjgjrhl4m.apps.googleusercontent.com',
    iosBundleId: 'com.example.pocVideo',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBWNADA7ChEsDUfyJuc0wtIR3dt3RxRwKI',
    appId: '1:476041552524:ios:c5c525087521f449c0d1a9',
    messagingSenderId: '476041552524',
    projectId: 'pocvideo-dfc1a',
    storageBucket: 'pocvideo-dfc1a.appspot.com',
    iosClientId: '476041552524-3d5isikfld59djbm2h3pr9jfjgjrhl4m.apps.googleusercontent.com',
    iosBundleId: 'com.example.pocVideo',
  );
}
