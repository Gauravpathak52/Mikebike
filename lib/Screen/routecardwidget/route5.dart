import 'package:flutter/material.dart';
import 'package:mikebikes/controller/navigator.dart';

class Route5 extends StatelessWidget {
  const Route5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riverside Experience Tour'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'New Tour! Riverside Experience Tour',
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange),
              ),
              const SizedBox(height: 10),
              const Text(
                'Muddy confluence of the Klang and the Gombak rivers, is the historical chronicle of Kuala Lumpur.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'During this tour, you will cycle along the banks of the Klang River towards Brickfields, or Little India, a lively city enclave on beautifully constructed cycle paths. The cycle paths were constructed to encourage cycling in Kuala Lumpur.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'Feel the vibrant city life and its historical elements combined with the tranquillity of the meandering river.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'Of course, the guide will stop at various highlights. For instance, be surprised at Lorong Yap Ah Loy, named after a Chinese leader who helped to rebuild the city after a civil war and disasters.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'Before you reach the colourful street of Little India, visit the Buddhist Maha Vihara Temple with the three large statues of Buddha.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'As you cycle further, you pass the Ashram Vivekananda, named after the yogi who brought yoga to the West, among other things.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'While cycling, remember to pay attention to monitor lizards along the banks of the river and the many eye-catching murals along this route.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                'Halfway through this tour, you can enjoy a delicious, authentic Banana-leaf rice meal at a local Indian restaurant. Thereafter, as the sun slowly reaches its zenith, the tour leads you to the photogenic confluence of the two rivers of Klang and Gombak.',
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                "After 3 hours, you'll arrive back at our office.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              const Text(
                "This tour fully lives up to Kuala Lumpur's slogan as ‘A City of Contrasts & Diversity’ and focuses on the experience of cycling in this amazing city.",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  style: TextStyle(fontSize: 16, color: Colors.black),
                  children: [
                    TextSpan(text: 'We start at 10:00 am at '),
                    TextSpan(
                      text: "MikeBikes' office",
                      style: TextStyle(
                          color: Colors.orange, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: ' and we will be back around 1:00 pm.'),
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
