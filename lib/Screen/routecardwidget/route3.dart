import 'package:flutter/material.dart';
import 'package:mikebikes/controller/navigator.dart';

class Route3 extends StatelessWidget {
  const Route3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kuala Lumpur's Authentic Experience"),
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
                "Kuala Lumpur's Authentic Experience",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 14),
              const Text(
                "This is our shortest tour. Ideal for getting an impression of part of the city in little time. You'll visit the oldest settlement, Kampung Bahru. Kampung Bahru is known for its traditional Malay stilt houses surrounded by coconut palms and banana trees. There are lively markets and numerous traditional restaurants.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                "You will also visit the Chow Kit Market. This is the largest local market in the city, where locals buy their fruit, vegetables, meat and fish. The guide will tell you about the sights and take you to the market to taste local fruits.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                "We will also visit a local bistro where we can enjoy a snack and drink. The guide will give you many practical tips for a pleasant stay in the city.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    TextSpan(text: "We will start at 9:00 am at "),
                    TextSpan(
                      text: "MikeBikes' office",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: " and be back about 11:30 am."),
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
