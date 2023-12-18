import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:manage/login.dart';

class Teacher extends StatefulWidget {
  const Teacher({Key? key}) : super(key: key);

  @override
  State<Teacher> createState() => _TeacherState();
}

class _TeacherState extends State<Teacher> {
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Teacher"),
        actions: [
          IconButton(
            onPressed: () {
              logout(context);
            },
            icon: Icon(
              Icons.logout,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: messageController,
              decoration: InputDecoration(
                labelText: 'Nhập nội dung',
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
          
                sendMessage();
              },
              child: Text('Gửi'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> sendMessage() async {

    String? uid = FirebaseAuth.instance.currentUser?.uid;
    String message = messageController.text.trim();

    if (message.isNotEmpty) {
   
      FirebaseDatabase.instance.ref().child('messages').push().set({
        'uid': uid,
        'message': message,
        'timestamp': ServerValue.timestamp,
      });

 
      messageController.clear();
    }
  }

  Future<void> logout(BuildContext context) async {
    CircularProgressIndicator();
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
    );
  }
}
