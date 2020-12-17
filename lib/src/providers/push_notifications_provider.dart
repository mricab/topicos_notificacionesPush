import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationProvider {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  initNotifications() {
    _firebaseMessaging.requestNotificationPermissions();
    _firebaseMessaging.getToken().then((token) {
      print('==== FCM TOKEN ====');
      print(
          token); //dzp2ZuN3Snq8vLv628A3oV:APA91bHh0IeifDkhXpNDnJ1aeia_5u4qkES0kvtJ5xupJHZ4cykdVgbhY48X3cjt_IVUQHoByGloQ5EupngoCRTHma9MBXzYboa1zvEkbF7z9xSVDtszpFOxy9pTAa3EdsT9LOirFUZB
    });
  }
}
