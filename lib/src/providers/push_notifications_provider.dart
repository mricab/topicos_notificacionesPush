import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationProvider {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  initNotifications() {
    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.getToken().then((token) {
      print('==== FCM TOKEN ====');
      print(token);
      //dzp2ZuN3Snq8vLv628A3oV:APA91bHh0IeifDkhXpNDnJ1aeia_5u4qkES0kvtJ5xupJHZ4cykdVgbhY48X3cjt_IVUQHoByGloQ5EupngoCRTHma9MBXzYboa1zvEkbF7z9xSVDtszpFOxy9pTAa3EdsT9LOirFUZB
    });

    _firebaseMessaging.configure(
      onMessage: (info) {
        print('==== onMessage ====');
        print(info);
      }, //Fires when the app is open
      onLaunch: (info) {
        print('==== onLaunch ====');
        print(info);
      }, //Fires when the app is open
      onResume: (info) {
        print('==== onResume ====');
        print(info);
      }, //Fires when the app is open
    );
  }
}
