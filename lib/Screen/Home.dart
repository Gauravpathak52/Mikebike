import 'package:flutter/material.dart';
import 'package:mikebikes/controller/navigator.dart';
import 'package:mikebikes/controller/slider.dart';
import 'package:mikebikes/genrated/Image.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          return false;
        },
        child: Scaffold(
            appBar: AppBar(
                shadowColor: Colors.black,
                elevation: 4,
                centerTitle: false,
                automaticallyImplyLeading: false,
                title: Row(
                  children: [
                    Image.asset(
                      logo,
                      fit: BoxFit.fill,
                      height: MediaQuery.of(context).size.height * 0.06,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      'MIKEBIKES',
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                        letterSpacing: 2.0,
                        fontFamily: 'Roboto',
                      ),
                    )
                  ],
                )),
            body: SingleChildScrollView(
              child: Stack(children: [
                Column(children: [
                  const PromotionsBanner(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.48,
                            height: MediaQuery.of(context).size.height * 0.20,
                            child: InkWell(
                              onTap: () {
                                navigateToRatesdashbord(context);
                              },
                              child: Card(
                                color: Colors.orange[400],
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  side: const BorderSide(
                                      color: Colors.black, width: 1),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.rate_review_outlined,
                                        size: 35,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'RATES',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.48,
                            height: MediaQuery.of(context).size.height * 0.20,
                            child: InkWell(
                              onTap: () {
                                navigateTorotedashboard(context);
                              },
                              child: Card(
                                color: Colors.orange[400],
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.route_outlined,
                                        color: Colors.blue,
                                        size: 35,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'ALL TOURS',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.48,
                            height: MediaQuery.of(context).size.height * 0.20,
                            child: InkWell(
                              onTap: () {
                                navigateTobooking(context);
                              },
                              child: Card(
                                color: Colors.orange[400],
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.book_online_outlined,
                                        size: 35,
                                        color: Colors.blue,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'RESERVATION',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.48,
                            height: MediaQuery.of(context).size.height * 0.20,
                            child: InkWell(
                              onTap: () {
                                navigateToabout(context);
                              },
                              child: Card(
                                color: Colors.orange[400],
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.abc_outlined,
                                        color: Colors.lightBlue,
                                        size: 35,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'ABOUT',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.32,
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: InkWell(
                              onTap: () {
                                navigateTosponcer(context);
                              },
                              child: Card(
                                color: Colors.orange[400],
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.business_center_outlined,
                                        color: Colors.blue,
                                        size: 35,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'SPONSORS',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.32,
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: InkWell(
                              onTap: () {
                                navigateTonews(context);
                              },
                              child: Card(
                                color: Colors.orange[400],
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.newspaper,
                                        color: Colors.blue,
                                        size: 35,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'NEWS',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.32,
                            height: MediaQuery.of(context).size.height * 0.18,
                            child: InkWell(
                              onTap: () {
                                navigateTocontact(context);
                              },
                              child: Card(
                                color: Colors.orange[400],
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                  side: const BorderSide(
                                      color: Colors.black, width: 1),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.contact_emergency_outlined,
                                        color: Colors.blue,
                                        size: 35,
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'CONTACT',
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.center,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              ]),
            )));
  }
}
