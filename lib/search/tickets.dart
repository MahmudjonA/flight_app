import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:milan_flight_app/core/constants/color.dart';
import 'package:milan_flight_app/search/widgets/ticket_widget.dart';

class FlightCardPage extends StatelessWidget {
  const FlightCardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.blueColor,
      appBar: AppBar(
        backgroundColor: CustomColor.blueColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title:  Text(
          tr("Search Flights"),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              FlightTicket(),
              FlightTicket(),
              FlightTicket(),
            ],
          ),
        ),
      ),
    );
  }
}
