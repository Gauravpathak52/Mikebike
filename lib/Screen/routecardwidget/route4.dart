import 'package:flutter/material.dart';
import 'package:mikebikes/controller/navigator.dart';

class Route4 extends StatelessWidget {
  const Route4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pitstop Foodie Tour"),
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
                "Pitstop Foodie Tour",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "(on Monday, Wednesday & Friday)",
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 10),
              const Text(
                "Want to discover authentic restaurants in Kuala Lumpur in an adventurous way? Then this is your tour! You will see the capital in pure dynamism where locals live their traditional lives. The locals cook in a traditional way and they offer their specific dishes to us. This tour is ideal if you love tasting multicultural gastronomy.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                "This tour takes you through Bukit Bintang, Imbi, the Indian quarter and of course Chinatown and Kampung Bahru. During this tour, you will be offered a wide range of tasty snacks and drinks from Indian, Malaysian and Chinese cuisine. The food is not halal.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                "These meals are non-halal, but it is possible to book a halal Pitstop Foodie Tour. Enquire about the options by email or WhatsApp. Please note, this tour is not suitable for vegetarians.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Sign up for this gastronomic adventure!",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const SizedBox(height: 10),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    TextSpan(text: "We start at 4:00 pm at "),
                    TextSpan(
                      text: "MikeBikes' office",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: " and we will be back about 8:00 pm."),
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
