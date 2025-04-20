//Kuala Lumpur's Authentic Experience:

import 'package:flutter/material.dart';
import 'package:mikebikes/controller/navigator.dart';

class Rates1Screen extends StatelessWidget {
  const Rates1Screen({super.key});

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Kuala Lumpur\'s Authentic Experience:',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              const SizedBox(height: 10),
              const Text(
                  'Private tours can be booked from 1 person. The standard tours continue from 2 persons.'),
              const SizedBox(height: 10),
              const Text(
                'Rates Standard until 31/12/2025:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 5),
              _buildRateRow('Child in front child seat (0-2 years)', 'Free'),
              _buildRateRow('Child in back child seat (3-6 years)', 'Free'),
              _buildRateRow(
                  'Children (7-12 years, min height 130 cm)', 'RM 130'),
              _buildRateRow('Adults (13 years and older)', 'RM 155'),
              const Divider(),
              const Text(
                'Private rates until 31/12/2025:',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              RichText(
                text: const TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 14),
                  children: [
                    TextSpan(
                      text:
                          'The rates of a private tour depends on the number of persons in the group and the age of the persons. For cancellation of private tours see 8.4 of the ',
                    ),
                    TextSpan(
                      text: 'general terms and conditions.',
                      style: TextStyle(
                          color: Colors.orange,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              _buildRateRow('Child in front seat (0-2 years)', 'Free'),
              _buildRateRow('Child in back seat (3-6 years)', 'Free'),
              const Text('Children (7-12 years):',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              _buildRateRow('1 child', 'RM 170'),
              _buildRateRow('2 children', 'RM 145'),
              _buildRateRow('3 children or more (max. 6)', 'RM 140'),
              const Text('Adults (13 years and older):',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              _buildRateRow('1 person', 'RM 230'),
              _buildRateRow('2 persons', 'RM 190'),
              _buildRateRow('3 persons', 'RM 180'),
              _buildRateRow('4 persons or more', 'RM 165'),
              const Divider(),
              const Text('* Rates are per person'),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      navigateTobooking(context);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Book Now',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRateRow(String category, String price) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(category, style: const TextStyle(fontSize: 14)),
          Text(price, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
