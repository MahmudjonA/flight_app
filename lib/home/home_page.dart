import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:milan_flight_app/core/route/rout_names.dart';
import 'package:milan_flight_app/home/widgets/custom_container.dart';
import 'package:milan_flight_app/home/widgets/date_sheet.dart';
import '../core/constants/color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomepageState();
}

class _HomepageState extends State<HomePage> {
  String? _tripType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.blueColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/map.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_back_ios_rounded,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          tr("Search Flights"),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                          ),
                        ),
                        const SizedBox(
                          width: 25,
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      tr("Discover \na new world"),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: "oneway",
                          groupValue: _tripType,
                          onChanged: (value) => setState(() {
                            _tripType = value;
                          }),
                        ),
                        Text(tr("One-way")),
                        const SizedBox(width: 20),
                        Radio(
                          value: "roundtrip",
                          groupValue: _tripType,
                          onChanged: (value) => setState(() {
                            _tripType = value;
                          }),
                        ),
                        Text(tr("Round-trip")),
                      ],
                    ),
                    Text(tr("From")),
                    const CustomContainer(
                      info: "New York, USA",
                      icon: Icons.flight_takeoff,
                    ),
                    Text(tr("To")),
                    const CustomContainer(
                      info: "Da Nang, Vietnam",
                      icon: Icons.flight_land,
                    ),
                    Text(tr("Departure Date")),
                    GestureDetector(
                      onTap: () => showDealsDate(context),
                      child: const CustomContainer(
                        info: "August 28, 2021",
                        icon: Icons.calendar_month_outlined,
                      ),
                    ),
                    Text(tr("Travelers")),
                    const CustomContainer(
                      info: "1 Adult, 1 child, 0 Infant",
                      icon: Icons.person_2_outlined,
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, RouteNames.flightCardPage);
                      },
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: CustomColor.blueColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            tr("Search Flights"),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
