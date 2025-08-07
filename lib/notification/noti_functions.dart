// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:timezone/browser.dart';

// class NotiFunctions {
//   FlutterLocalNotificationsPlugin localPlugin =
//       FlutterLocalNotificationsPlugin();

//   Future<void> init() async {
//     setLocalLocation(getLocation('Dhaka/Bangladesh'));

//     const AndroidInitializationSettings androidSettings =
//         AndroidInitializationSettings("@mipmap/ic_launcher");
//     const DarwinInitializationSettings settings =
//         DarwinInitializationSettings();
//     const InitializationSettings initStetting = InitializationSettings(
//       android: androidSettings,
//       iOS: settings,
//     );

//     await localPlugin.initialize(initStetting);
//   }

//   // Future<void> showInstantNotification({
//   //   required int id,
//   //   required String title,
//   //   required String body,
//   // }) async {
//   //   await localPlugin.show(
//   //     id,
//   //     title,
//   //     body,
//   //     NotificationDetails(
//   //       android: AndroidNotificationDetails(
//   //         importance: Importance.high,
//   //         priority: Priority.max,
//   //         visibility: NotificationVisibility.public,

//   //         "instanat chan_id",
//   //         "juna",
//   //         actions: [
//   //           AndroidNotificationAction("mark as read", "Mark as read"),
//   //           AndroidNotificationAction("remidnd after  1hr", "after 1 hr"),
//   //         ],
//   //       ),
//   //       iOS: DarwinNotificationDetails(),
//   //     ),
//   //   );
//   // }
// }
