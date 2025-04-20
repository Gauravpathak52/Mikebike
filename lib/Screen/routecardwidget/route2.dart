import 'package:flutter/material.dart';
import 'package:mikebikes/controller/navigator.dart';

class Route2 extends StatelessWidget {
  const Route2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kuala Lumpur SUNSET and NIGHT Tour'),
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Kuala Lumpur SUNSET and NIGHT Tour',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                'Our guide will take you on this unforgettable evening tour. On this tour, you can enjoy the sunset and witness the upcoming evening life. From MikeBikes, we cycle to the oldest settlement Kampung Bahru. Kampung Bahru is known for its traditional Malay stilt houses surrounded by coconut palms and banana trees. In the evening, the evening markets will be built up and we will taste local fruits.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'We will then cycle past the traditional Chow Kit Market. This is the largest local market in the city where locals buy fruit, vegetables, meat and fish. From the Malay section, we will move to the Indian section, where we will enjoy a delicious local dinner (Malay/Indian). After dinner, we continue to Little China, where we will visit the colourful Hindu temple Sri Maha Mariamman.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'Via Bukit Nanas, we enter the Golden Triangle with the famous Petronas Twin Towers. The local guide explains the history of Kuala Lumpur.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    TextSpan(text: 'We start at 4:00 pm at '),
                    TextSpan(
                      text: "MikeBikes' office",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' and we will be back around 8:00 pm.'),
                  ],
                ),
              ),
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
}
