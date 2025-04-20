import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  // Function to launch phone number dialer
  Future<void> _launchPhone(String phoneNumber) async {
    final Uri phoneUri = Uri.parse("tel:${phoneNumber.replaceAll('+', '%2B')}");
    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  // Function to launch email client
  Future<void> _launchEmail() async {
    final Uri emailUrl = Uri(
      scheme: 'mailto',
      path: 'info@mikebikes.my',
      queryParameters: {'subject': 'Inquiry about MikeBikes'},
    );
    if (await canLaunchUrl(emailUrl)) {
      await launchUrl(emailUrl);
    } else {
      throw 'Could not launch email client';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        centerTitle: true,
        elevation: 4,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Location Information
          const Text(
            'Location',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            "Our meeting point: MikeBikes' office, 46, Lorong Raja Muda Musa 4, Kampung Baru, 50300 Kuala Lumpur. This is also the start and end point of each tour.",
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          const Text(
            'Public transport: LRT KAMPUNG BHARU (RED LINE) or MRT RAJA UDA, PINTU A (YELLOW LINE). Then follow the signposts to our location.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          const Text(
            'Our location is a 5 minutes walk from SALOMA BRIDGE.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          const Text(
            'Our location is in The Golden Triangle, in Kampung Baru, near the Petronas Twin Towers, the heart of Kuala Lumpur.',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 20),

          // Contact Information
          const Text(
            'MikeBikes Sdn Bhd',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          const Text(
            '46, Lorong Raja Muda Musa 4, Kampung Baru, 50300 Kuala Lumpur',
            style: TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.phone, color: Colors.green),
              const SizedBox(width: 10),
              const Text(
                '+60 17 673 7322 (voorkeur)',
                style: TextStyle(fontSize: 16),
              ),
              IconButton(
                icon: const Icon(Icons.call),
                onPressed: () {
                  _launchPhone('+60176737322');
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.phone, color: Colors.green),
              const SizedBox(width: 10),
              const Text(
                '+60 17 664 5223',
                style: TextStyle(fontSize: 16),
              ),
              IconButton(
                icon: const Icon(Icons.call),
                onPressed: () {
                  _launchPhone('+60176645223');
                },
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Icon(Icons.email, color: Colors.blue),
              const SizedBox(width: 10),
              const Text(
                'info@mikebikes.my',
                style: TextStyle(fontSize: 16),
              ),
              IconButton(
                icon: const Icon(Icons.email),
                onPressed: _launchEmail,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
