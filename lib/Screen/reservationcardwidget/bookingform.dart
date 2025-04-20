import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mikebikes/controller/navigator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BookingFormScreen extends StatefulWidget {
  final String slotTitle;
  final String slotTime;
  final DateTime selectedDate;
  const BookingFormScreen({
    super.key,
    required this.slotTitle,
    required this.slotTime,
    required this.selectedDate,
  });

  @override
  // ignore: library_private_types_in_public_api
  _BookingFormScreenState createState() => _BookingFormScreenState();
}

class _BookingFormScreenState extends State<BookingFormScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController countryController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  @override
  void initState() {
    super.initState();
    _selectedDate = widget.selectedDate;
  }

  late DateTime _selectedDate;
  int adults = 0;
  int children24 = 0;
  int children26 = 0;
  int childrenBackSeats = 0;
  int childrenFrontSeats = 0;
  String _formatDate(DateTime date) {
    return DateFormat('dd-MM-yyyy').format(date);
  }

  bool isPrivateTour = false;
  bool agreeToTerms = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Form'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Chosen tour:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              '${widget.slotTitle} at ${widget.slotTime} on ${_formatDate(_selectedDate)}',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            const SizedBox(height: 16),
            const Text(
              'Please fill in the details below:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            // Name Input
            TextField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                )),
            const SizedBox(height: 8),
            // Email Input
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 8),

            TextField(
              controller: countryController,
              decoration: InputDecoration(
                labelText: 'Country',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 8),

            TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Mobile phone number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 16),

            const Text(
              'Number of Persons:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            _buildCounter('Adults (older than 12 years)', adults, (value) {
              setState(() {
                adults = value;
              });
            }),
            _buildCounter(
                'Children - 24" Bike (7 until 10 years, minimum height 130 cm)',
                children24, (value) {
              setState(() {
                children24 = value;
              });
            }),
            _buildCounter(
                'Children - 26" Bike (11 until 12 years, minimum height 140 cm)',
                children26, (value) {
              setState(() {
                children26 = value;
              });
            }),
            _buildCounter('Children Back Seats (2 until 6 years, max 22 kg)',
                childrenBackSeats, (value) {
              setState(() {
                childrenBackSeats = value;
              });
            }),
            _buildCounter(
                'Children Front Seats (9 months until 2 years, max 15 kg)',
                childrenFrontSeats, (value) {
              setState(() {
                childrenFrontSeats = value;
              });
            }),
            const SizedBox(height: 16),

            CheckboxListTile(
              value: isPrivateTour,
              onChanged: (value) {
                setState(() {
                  isPrivateTour = value!;
                });
              },
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                        'Private Tour - A private guide only for your group'),
                  ),
                ],
              ),
              controlAffinity: ListTileControlAffinity.leading,
            ),
            const SizedBox(height: 16),
            CheckboxListTile(
              value: agreeToTerms,
              onChanged: (value) {
                setState(() {
                  agreeToTerms = value!;
                });
              },
              title: const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child:
                        Text('I agree with the general terms and conditions.'),
                  ),
                ],
              ),
              controlAffinity: ListTileControlAffinity.leading,
            ),

            const SizedBox(height: 16),

            ElevatedButton(
              onPressed: () {
                // Check if all fields are filled and conditions are met
                if (nameController.text.isEmpty ||
                    emailController.text.isEmpty ||
                    countryController.text.isEmpty ||
                    phoneController.text.isEmpty ||
                    (adults == 0 &&
                        children24 == 0 &&
                        children26 == 0 &&
                        childrenBackSeats == 0 &&
                        childrenFrontSeats == 0)) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Incomplete Form'),
                      content: const Text(
                          'Please fill in all the details and select at least one person for the tour.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                  return;
                }

                if (!agreeToTerms || !isPrivateTour) {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Terms Not Agreed'),
                      content: const Text(
                          'You must agree to the terms and conditions and select the private tour option to proceed.'),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                  return;
                }

                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                      title: const Text('Total Amount'),
                      content: const Text(
                        'Your Total Amount 500 RM',
                      ),
                      actions: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Full Amount Pay Button
                            TextButton(
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                String? cardNumber =
                                    prefs.getString('cardNumber');

                                if (cardNumber != null &&
                                    cardNumber.isNotEmpty) {
                                  navigateTocardpay(context);
                                } else {
                                  navigateToAddcard(context);
                                }
                              },
                              child: const Text('Pay Full Amount'),
                            ),
                            const SizedBox(height: 10),

                            TextButton(
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                String? cardNumber =
                                    prefs.getString('cardNumber');

                                if (cardNumber != null &&
                                    cardNumber.isNotEmpty) {
                                  navigateTocardpay(context);
                                } else {
                                  navigateToAddcard(context);
                                }
                              },
                              child:
                                  const Text('Pay 50 RM Now, Rest Pay Later'),
                            ),
                          ],
                        )
                      ]),
                );
              },
              child: const Text('Check Prices and Availability'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCounter(String label, int value, Function(int) onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: 2,
          child: Text(label),
        ),
        Expanded(
          flex: 1,
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: value > 0 ? () => onChanged(value - 1) : null,
              ),
              Text(value.toString()),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => onChanged(value + 1),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
