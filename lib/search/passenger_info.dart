import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../core/constants/color.dart';

class PassengerInfo extends StatefulWidget {
  const PassengerInfo({super.key});

  @override
  _PassengerInfoState createState() => _PassengerInfoState();
}

class _PassengerInfoState extends State<PassengerInfo> {
  String? gender = 'Male';
  String countryCode = '+44';
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final idCardNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              tr("Passenger Info"),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Radio(
                      value: tr("Male"),
                      groupValue: gender,
                      activeColor: CustomColor.blueColor,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    Text(tr("Male")),
                  ],
                ),
                const SizedBox(width: 10),
                Row(
                  children: [
                    Radio(
                      value: tr("Female"),
                      activeColor: CustomColor.blueColor,
                      groupValue: gender,
                      onChanged: (String? value) {
                        setState(() {
                          gender = value;
                        });
                      },
                    ),
                    Text(tr("Female")),
                  ],
                ),
              ],
            ),
            TextField(
              controller: fullNameController,
              decoration: InputDecoration(
                labelText: tr('Full Name'),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: tr('Email Address'),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            TextField(
              controller: idCardNumberController,
              decoration: InputDecoration(
                labelText: tr('ID Card Number'),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(8),
                  ),
                  borderSide: BorderSide(
                    color: Color.fromRGBO(13, 22, 52, 0.05),
                    width: 1,
                  ),
                ),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            Text(
              tr("This contact is for e-ticket and refund/rescheduling"),
              style: const TextStyle(fontSize: 12, color: CustomColor.greyColor),
            ),
            const SizedBox(height: 32),
            TextButton(
              style: ButtonStyle(
                minimumSize:
                    WidgetStateProperty.all(const Size(double.infinity, 55)),
                backgroundColor: WidgetStateProperty.all(CustomColor.blueColor),
                shape: WidgetStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                tr("Save Changes"),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
