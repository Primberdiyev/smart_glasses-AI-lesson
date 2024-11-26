import 'package:flutter/material.dart';
import 'package:smart_glasses/allowed_app.dart';
import 'package:smart_glasses/detail_page.dart';
import 'package:smart_glasses/noifiction.dart';
import 'package:smart_glasses/pie_chart.dart';
import 'package:smart_glasses/history_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bosh sahifa"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllowedAppsScreen()),
                );
              },
              child: const Text("Ruxsat berilgan ilovalar"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TimeSpentChartScreen(),
                  ),
                );
              },
              child: const Text("Diogramma"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailedAnalysisScreen()),
                );
              },
              child: const Text("Batafsil tahlil"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                );
              },
              child: const Text("Bildirishnomalar"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HistoryPage()), 
                );
              },
              child: const Text("Kontent Tarixi"),
            ),
          ],
        ),
      ),
    );
  }
}
