import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class StudentScreen extends StatefulWidget {
  @override
  _StudentScreenState createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  late DatabaseReference _messagesRef;
  List<Map<String, dynamic>> messages = [];
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    super.initState();

    _messagesRef = FirebaseDatabase.instance.ref().child('messages');

    // Khởi tạo plugin thông báo
    var initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');

    var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
    );
    flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      
    );

    _messagesRef.onChildAdded.listen((event) {
      final dynamic values = event.snapshot.value;
      Map<String, dynamic> message = {
        'message': values['message'],
        'timestamp': values['timestamp'],
        'uid': values['uid'],
      };

      setState(() {
        messages.add(message);
      });

      showNotification('New Message', message['message']);
    });
  }

  Future<void> showNotification(String title, String body) async {
    var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      'your_channel_id',
      'your_channel_name',
      
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
    );

    var platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
    );
    await flutterLocalNotificationsPlugin.show(
      0,
      title,
      body,
      platformChannelSpecifics,
      payload: 'item x',
    );
  }

  Future<void> onSelectNotification(String payload) async {
    print('Notification selected: $payload');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student'),
      ),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(messages[index]['message']),
            subtitle: Text(
              'Timestamp: ${messages[index]['timestamp']} | UID: ${messages[index]['uid']}',
            ),
          );
        },
      ),
    );
  }
}
