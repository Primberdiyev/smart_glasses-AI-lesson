import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  List<String> notifications = [];

  @override
  void initState() {
    super.initState();
    _startNotifications();
  }

  void _startNotifications() {
    Future.delayed(const Duration(seconds: 10), () {
      setState(() {
        notifications.add("Farzandingiz YouTube tomosha qilmoqda");
      });
    });

    Future.delayed(const Duration(seconds: 20), () {
      setState(() {
        notifications.add("Farzandingiz YouTube Shorts ko'rmoqda");
      });
    });

    Future.delayed(const Duration(seconds: 30), () {
      setState(() {
        notifications.add("Farzandingiz nomaqbul contentni ko'rishni boshladi");
      });
    });

    Future.delayed(const Duration(seconds: 40), () {
      setState(() {
        notifications.add("Farzandingizdan YouTube bloklandi");
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bildirishnomalar"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: notifications.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16.0),
                title: Text(notifications[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}
