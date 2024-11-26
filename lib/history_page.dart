import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryPage extends StatelessWidget {
  final List<Map<String, String>> contentHistory = [
    {
      'date': '2024-11-18',
      'content': 'Panda multfilmi',
      'time': '14:00',
    },
    {
      'date': '2024-11-19',
      'content': 'YouTube Shorts',
      'time': '16:30',
    },
    {
      'date': '2024-11-20',
      'content': 'Smurflar multfilmi',
      'time': '10:00',
    },
    {
      'date': '2024-11-21',
      'content': 'YouTube Shorts',
      'time': '12:45',
    },
    {
      'date': '2024-11-22',
      'content': 'Panda multfilmi',
      'time': '15:00',
    },
    {
      'date': '2024-11-23',
      'content': 'Smurflar multfilmi',
      'time': '09:30',
    },
    {
      'date': '2024-11-24',
      'content': 'YouTube Shorts',
      'time': '18:00',
    },
  ];

   HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kontent Tarixi"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: contentHistory.length,
          itemBuilder: (context, index) {
            final historyItem = contentHistory[index];
            final date = DateFormat('yyyy-MM-dd').parse(historyItem['date']!);
            final formattedDate = DateFormat('d MMM yyyy').format(date);

            return Card(
              margin: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16.0),
                title: Text('Kun: $formattedDate'),
                subtitle: Text(
                    'Kontent: ${historyItem['content']} | Vaqt: ${historyItem['time']}'),
              ),
            );
          },
        ),
      ),
    );
  }
}
