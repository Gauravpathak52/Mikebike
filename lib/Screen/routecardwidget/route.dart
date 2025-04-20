import 'package:flutter/material.dart';
import 'package:mikebikes/controller/navigator.dart';

class Route1 extends StatelessWidget {
  const Route1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The BEST of Kuala Lumpur CLASSIC'),
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
                'The BEST of Kuala Lumpur CLASSIC',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                'The delightful combination of traditions and cross-cultural influences offers the city with an enticing and exciting charm. Kuala Lumpur has a unique mix of modern lifestyle along with its traditional ways of life. Similar to some of the biggest cities of the world, Kuala Lumpur is home to different cultures that co-exist side by side.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'Kuala Lumpur is known for its heritage buildings. During this tour, our guide will point these sights out to you. From MikeBikes, we cycle to the oldest settlement Kampung Bahru. Kampung Bahru is famous for its traditional Malay stilt houses surrounded by coconut palms and banana trees. Along the route, you will see lively markets and numerous traditional restaurants. You will visit the Chow Kit Market. This is the biggest local market in town where locals buy their fruit, vegetables, meat and fish. We will have a taste here!',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'From the Malay part, we cycle to the Indian part, where we enjoy a delicious local brunch (Malay/Indian). We continue our tour to Little China where we will visit the very special Chinese Sin Sze Si Ya Temple. Via Bukit Nanas, we enter the Golden Triangle with the famous Petronas Twin Tower.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'You will cycle through parts of the city that have been defining for today\'s Kuala Lumpur. The local guide explains about the history of Kuala Lumpur. This tour will give you an ideal impression of the \'City of Contrasts & Diversity\'.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    TextSpan(text: 'We start at 8:00 am at '),
                    TextSpan(
                      text: "MikeBikes' office",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' and we will be back around 12:00 pm.'),
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
