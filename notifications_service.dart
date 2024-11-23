import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationsService {
  static void initializeNotifications() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;

    NotificationSettings settings = await messaging.requestPermission();
    print('Notification permission: ${settings.authorizationStatus}');

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      print('Foreground Notification: ${message.notification?.title}');
    });

    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
  }

  static Future<void> _backgroundHandler(RemoteMessage message) async {
    print('Background Notification: ${message.notification?.title}');
  }
}
