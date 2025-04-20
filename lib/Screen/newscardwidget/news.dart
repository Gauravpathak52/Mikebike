import 'package:flutter/material.dart';

class NewsAndEventsScreen extends StatelessWidget {
  const NewsAndEventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News, Tours and Events'),
        centerTitle: true,
        elevation: 4,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          // First Event
          EventCard(
            date: '3 November 2024',
            title:
                'IT IS WITH GREAT PRIDE THAT WE WELCOME YOU TO OUR NEW LOCATION.',
            description:
                'MikeBikes\' office, 46, Lorong Raja Muda Musa 4, Kampung Baru, 50300 Kuala Lumpur...',
          ),
          SizedBox(height: 10),

          EventCard(
            date: '1 October 2024',
            title: 'We are moving soon!',
            description:
                'In 2018, we founded MikeBikes. Our mission remains: to make sustainable transport accessible to all...',
          ),
          SizedBox(height: 10),
          // Third Event
          EventCard(
            date: '15 September 2024',
            title: 'Cycling in Kuala Lumpur with kids',
            description:
                'We often collaborate with Kleine Wereldreiziger, a Dutch platform inspiring parents to discover the world...',
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String date;
  final String title;
  final String description;

  const EventCard(
      {super.key, required this.date, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              date,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
