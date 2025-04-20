import 'package:flutter/material.dart';

class Sponcer extends StatelessWidget {
  const Sponcer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sponcer'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
        elevation: 4,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title and Introduction
            Text(
              'Sponcer',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Both Dutch and Malaysian companies have faith in MikeBikes\' underlying idea, Strength through Cooperation.\n\n'
              'Mikebikes\' goal is to keep its operations as authentic and pure as possible for the city. The sponsors embrace ethical business practices. The positive effects of ethical entrepreneurship are evident through, among other things, cooperation with local restaurants, guides and small projects along the route. In addition, cycling is a green, sustainable mode of transport and makes a positive contribution to the environment. Companies that buy into this thinking have adopted a bike from MikeBikes\n\n'
              'The companies that have adopted bikes get a nameplate on the bike. This way, it is visible that they support the sustainable way of cycling and ethical entrepreneurship. They also support our social projects by doing so.\n\n'
              'Together, we strive to create awareness and thus encourage local people and local businesses to showcase the beauty of the city. Strength through Cooperation!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
