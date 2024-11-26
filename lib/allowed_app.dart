import 'package:flutter/material.dart';

class AllowedAppsScreen extends StatefulWidget {
  const AllowedAppsScreen({super.key});

  @override
  _AllowedAppsScreenState createState() => _AllowedAppsScreenState();
}

class _AllowedAppsScreenState extends State<AllowedAppsScreen> {
  final List<Map<String, dynamic>> apps = [
    {'name': 'YouTube', 'allowed': true},
    {'name': 'Instagram', 'allowed': false},
    {'name': 'TikTok', 'allowed': true},
    {'name': 'Facebook', 'allowed': false},
    {'name': 'Telegram', 'allowed': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ruxsat berilgan ilovalar"),
      ),
      body: ListView.builder(
        itemCount: apps.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(apps[index]['name']),
            trailing: Switch(
              value: apps[index]['allowed'],
              onChanged: (bool value) {
                setState(() {
                  apps[index]['allowed'] = value;
                });
              },
            ),
          );
        },
      ),
    );
  }
}
