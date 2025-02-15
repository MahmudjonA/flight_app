import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:milan_flight_app/core/constants/color.dart';

class ContactDetails extends StatefulWidget {
  const ContactDetails({super.key});

  @override
  _ContactDetailsState createState() => _ContactDetailsState();
}

class _ContactDetailsState extends State<ContactDetails> {
  String? gender = 'Male';
  String countryCode = '+44';
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final idCardNumberController = TextEditingController();

  List<DropdownMenuItem<String>> get countryDropdownItems {
    return [
      DropdownMenuItem(
        value: '+44',
        child: Row(
          children: [
            Image.asset('assets/images/uk.png', width: 24),
            const SizedBox(width: 8),
            const Text('UK (+44)'),
          ],
        ),
      ),
    ];
  }

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
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            Text(
              tr("Contact Person Details"),
              style: TextStyle(
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
                      groupValue: gender,
                      activeColor: CustomColor.blueColor,
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
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 18),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: tr('Email Address'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 18),
            DropdownButtonFormField<String>(
              value: countryCode,
              items: countryDropdownItems,
              onChanged: (value) {
                setState(() {
                  countryCode = value!;
                });
              },
              decoration: InputDecoration(
                labelText: tr('Country Code'),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 18),
            TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                labelText: tr('Phone Number'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.phone,
            ),
            const SizedBox(height: 18),
            TextField(
              controller: idCardNumberController,
              decoration: InputDecoration(
                labelText: tr('ID Card Number'),
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 8),
            Text(
              tr("This contact is for e-ticket and refund/rescheduling"),
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            const SizedBox(height: 32),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 55),
                backgroundColor: CustomColor.blueColor,
                // set the background color to blue
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              onPressed: () {
                // handle save changes
                Navigator.pop(context);
              },
              child: Text(
                tr("Save Changes"),
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
