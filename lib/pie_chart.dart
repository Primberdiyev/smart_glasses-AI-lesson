import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class TimeSpentChartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double youtubeTime = 1.5; 
    double instagramTime = 1.0; 
    double telegramTime = 0.5; 
    double tiktokTime = 0.5;

    double totalTime = youtubeTime + instagramTime + telegramTime + tiktokTime;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Farzandning Sarflangan Vaqti"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PieChart(
                PieChartData(
                  sectionsSpace: 0,
                  centerSpaceRadius: 50,
                  sections: [
                    PieChartSectionData(
                      value: 40,
                      title: 'YouTube\n40%',
                      color: Colors.blue,
                      radius: 50,
                    ),
                    PieChartSectionData(
                      value: 30,
                      title: 'Instagram\n30%',
                      color: Colors.pink,
                      radius: 50,
                    ),
                    PieChartSectionData(
                      value: 20,
                      title: 'Telegram\n20%',
                      color: Colors.blueAccent,
                      radius: 50,
                    ),
                    PieChartSectionData(
                      value: 10,
                      title: 'TikTok\n10%',
                      color: Colors.green,
                      radius: 50,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                'Umumiy Sarflangan Vaqt: ${totalTime.toStringAsFixed(1)} soat',
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
