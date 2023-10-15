// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options_dev.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCAufc36o6REqKhj1Rr5AzD71fHwx1W75c',
    appId: '1:719956441125:android:db16ee422dc4417b0127cc',
    messagingSenderId: '719956441125',
    projectId: 'project-varanasi-735a5',
    storageBucket: 'project-varanasi-735a5.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6i9_aMq6cI2_P5_2PQVknXVIETtyRke8',
    appId: '1:719956441125:ios:b2cdb71972d825970127cc',
    messagingSenderId: '719956441125',
    projectId: 'project-varanasi-735a5',
    storageBucket: 'project-varanasi-735a5.appspot.com',
    androidClientId: '719956441125-78c3emlv74pshl6btc31t4u294d8bejp.apps.googleusercontent.com',
    iosClientId: '719956441125-5l1gkghocnakpc462opncdmk8suhf7qm.apps.googleusercontent.com',
    iosBundleId: 'dev.aryak.varanasi.dev',
  );
}
