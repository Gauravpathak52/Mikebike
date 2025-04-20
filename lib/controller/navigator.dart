import 'package:flutter/material.dart';
import 'package:mikebikes/Screen/Home.dart';
import 'package:mikebikes/Screen/aboutcardwidget/about.dart';
import 'package:mikebikes/Screen/contactcardwidget/contact.dart';
import 'package:mikebikes/Screen/newscardwidget/news.dart';
import 'package:mikebikes/Screen/ratescardwidget/rates.dart';
import 'package:mikebikes/Screen/ratescardwidget/rates1.dart';
import 'package:mikebikes/Screen/ratescardwidget/rates2.dart';
import 'package:mikebikes/Screen/ratescardwidget/rates3.dart';
import 'package:mikebikes/Screen/ratescardwidget/ratesdashboard.dart';
import 'package:mikebikes/Screen/reservationcardwidget/booking.dart';
import 'package:mikebikes/Screen/reservationcardwidget/bookingform.dart';
import 'package:mikebikes/Screen/reservationcardwidget/card.dart';
import 'package:mikebikes/Screen/reservationcardwidget/cardpay.dart';
import 'package:mikebikes/Screen/reservationcardwidget/otp.dart';
import 'package:mikebikes/Screen/routecardwidget/route.dart';
import 'package:mikebikes/Screen/routecardwidget/route2.dart';
import 'package:mikebikes/Screen/routecardwidget/route3.dart';
import 'package:mikebikes/Screen/routecardwidget/route4.dart';
import 'package:mikebikes/Screen/routecardwidget/route5.dart';
import 'package:mikebikes/Screen/routecardwidget/routedashboard.dart';
import 'package:mikebikes/Screen/sponcercardwidget/sponcer.dart';

// ratescreen
void navigateToRatesScreen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const RatesScreen()),
  );
}

//rate dashboard
void navigateToRatesdashbord(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Ratesdashboard()),
  );
}

//rate1screen
void navigateToRates1Screen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Rates1Screen()),
  );
}

//rate2screen
void navigateToRates2Screen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Rates2Screen()),
  );
}

//rate3screen
void navigateToRates3Screen(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Rates3Screen()),
  );
}

//homescreen
void navigateToDashboard(BuildContext context) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => const DashboardScreen()),
  );
}

//routedscreendashboard
void navigateTorotedashboard(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Routedashboard()),
  );
}

//routedscreen
void navigateTorote(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Route1()),
  );
}

//routed2screen
void navigateTorote2(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Route2()),
  );
}

//routed3screen
void navigateTorote3(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Route3()),
  );
}

//routed4screen
void navigateTorote4(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Route4()),
  );
}

//routed5screen
void navigateTorote5(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Route5()),
  );
}

//booking
void navigateTobooking(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const CalendarSlotsScreen()),
  );
}

//bookingform
void navigateTobookingform(BuildContext context, String slotTitle,
    String slotTime, DateTime selectedDate) {
  Navigator.push(
    context,
    MaterialPageRoute(
        builder: (context) => BookingFormScreen(
              slotTitle: slotTitle,
              slotTime: slotTime,
              selectedDate: selectedDate,
            )),
  );
}

//About screen
void navigateToabout(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const About()),
  );
}

//Sponcer
void navigateTosponcer(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Sponcer()),
  );
}

//Sponcer
void navigateTonews(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const NewsAndEventsScreen()),
  );
}

//contact
void navigateTocontact(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ContactScreen()),
  );
}

//Add card
void navigateToAddcard(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const AddCardScreen()),
  );
}

//cardpay
void navigateTocardpay(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const PaymentMethodScreen()),
  );
}

//OTP
void navigateToOtp(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => OTPScreen()),
  );
}
