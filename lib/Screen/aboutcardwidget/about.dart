import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About MikeBikes'),
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
              'About MikeBikes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'For years, my life was all about hard work. I worked long hours to make our business successful, and I succeeded in part thanks to a fine dedicated team. But I noticed that work-life balance was off. I sold our company and started doing what had been on my wish list for a long time: travelling and cycling.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Kuala Lumpur Info
            Text(
              'Kuala Lumpur: The City of Contrasts',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'The contrast in the modern capital Kuala Lumpur was remarkable. Urban development here has led to increasing traffic, concrete buildings, and stifling pollution. The "hidden world" of authentic Malaysians is largely unknown to outsiders. Kuala Lumpur has colourful sights, a melting pot of smells from local markets, and intriguing lives of locals. It is one of the most fascinating cities in Asia.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // The Birth of MikeBikes
            Text(
              'How MikeBikes Was Born',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Once back in the Netherlands, the image of Kuala Lumpur didn’t get out of my head. We wanted to contribute to making the city’s gems visible to Malaysians and tourists alike, reduce environmental impact, and involve the local population. And thus, MikeBikes was born.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Mission statement
            Text(
              'Our Mission',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Our mission is to make sustainable transportation accessible to everyone while sharing the beauty of Kuala Lumpur, "the city of contrasts & diversity."',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Social Entrepreneurship
            Text(
              'Social Entrepreneurship',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'We have been organising our bike tours since 2018 with a focus on social return. We involve local people in our operations and are proud to have a wonderful team of enthusiastic Malaysian bicycle guides.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Projects
            Text(
              'Our Projects',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Project 1: We give children from socially disadvantaged families a bicycle to take care of themselves and educate them about eco-friendly transportation.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              'Project 2: We collect used bicycles in the Netherlands, refurbish them, and send them to Kuala Lumpur. We offer children cycling lessons and teach them how to maintain a bicycle.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Team Info
            Text(
              'Our Team',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Afiqah, Andrew, Apit, Barry, Charles, David, Fabienne, Farid, Henk, Hing, Johan, Joseph, Mike, Ping, Remco, Salena, Sin, Suhaimi, Tey, Tony & Wong Wye.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            // Contact Info or Additional Section
            Text(
              'Join Us in Making a Difference!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'We believe in strength through cooperation. Our bikes have been adopted by companies who value sustainable business. Together, we can create a cleaner, greener world!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
