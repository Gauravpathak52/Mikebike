import 'package:flutter/material.dart';
import 'package:mikebikes/controller/navigator.dart';

class Ratesdashboard extends StatelessWidget {
  const Ratesdashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tour Rates (RM)',
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
              'RATES (per person) in RM (Ringgits Malaysia)',
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange),
            ),
            const SizedBox(height: 14),
            Card(
              child: ListTile(
                title: const Text(
                  'The BEST of Kuala Lumpur CLASSIC & SUNSET EVENING Tour',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                onTap: () {
                  navigateToRatesScreen(context);
                },
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                title: const Text(
                  'Kuala Lumpur\'s Authentic Experience:',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                onTap: () {
                  navigateToRates1Screen(context);
                },
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                title: const Text(
                  'Pitstop Foodie Tour:',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                onTap: () {
                  navigateToRates2Screen(context);
                },
              ),
            ),
            const SizedBox(height: 10),
            Card(
              child: ListTile(
                title: const Text(
                  'Riverside Experience Tour:',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange),
                ),
                onTap: () {
                  navigateToRates3Screen(context);
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
