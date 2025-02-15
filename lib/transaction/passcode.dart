import 'package:flutter/material.dart';
import 'package:milan_flight_app/core/route/rout_names.dart';
import 'package:pinput/pinput.dart';

import '../core/constants/color.dart';

class Passcode extends StatelessWidget {
  const Passcode({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 56),
            const Text(
              "Passcode",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            const Text(
              "Enter Your Passcode to Proceed the Payment",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 16),
            const Text(
              "Forgot passcode?",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.blueColor),
            ),
            const SizedBox(height: 16),
            const Pinput(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              length: 6,
              keyboardType: TextInputType.numberWithOptions(),
              defaultPinTheme: PinTheme(
                width: 57,
                height: 43,
                decoration: BoxDecoration(
                  color: CustomColor.lightGrey,
                ),
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.confirmation);
              },
              child: Container(
                alignment: Alignment.center,
                width: double.infinity,
                height: 48,
                decoration: BoxDecoration(
                  color: CustomColor.blueColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  "Enter",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
