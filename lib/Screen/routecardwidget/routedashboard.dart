import 'package:flutter/material.dart';
import 'package:mikebikes/controller/navigator.dart';

class Routedashboard extends StatelessWidget {
  const Routedashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ALL TOURS',
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        elevation: 4,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            const Text(
              'Impression of the tours!',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
            const SizedBox(height: 14),
            Card(
              child: ListTile(
                title: const Text(
                  'The BEST of Kuala Lumpur CLASSIC',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                onTap: () {
                  navigateTorote(context);
                },
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                title: const Text(
                  'Kuala Lumpur SUNSET and NIGHT Tour',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                onTap: () {
                  navigateTorote2(context);
                },
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                title: const Text(
                  'Kuala Lumpur\'s Authentic Experience',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                onTap: () {
                  navigateTorote3(context);
                },
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                title: const Text(
                  'Pitstop Foodie Tour',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                onTap: () {
                  navigateTorote4(context);
                },
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                title: const Text(
                  'Riverside Experience Tour',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                onTap: () {
                  navigateTorote5(context);
                },
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
