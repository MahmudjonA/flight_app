import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:milan_flight_app/core/route/rout_names.dart';

import '../../core/constants/color.dart';

class SecuritySettings extends StatefulWidget {
  const SecuritySettings({super.key});

  @override
  State<SecuritySettings> createState() => _SecuritySettingsState();
}

class _SecuritySettingsState extends State<SecuritySettings> {
  String? _selectedOption = "Double Verification";
  bool _isDeviceTrusted = false;

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              height: 80,
              width: double.infinity,
              color: CustomColor.lightGrey,
              padding: const EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    tr("Security Settings"),
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr("Credit Card"),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        tr("Double Verification"),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Radio(
                        value: tr("Double Verification"),
                        groupValue: _selectedOption,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                        activeColor: CustomColor.blueColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    tr("Enter CVV & OTP code for more secure payment verification."),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 1,
                    width: double.infinity,
                    color: CustomColor.lightGreyColor,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Text(
                        tr("Single Verification"),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Radio(
                        value: tr("Single Verification"),
                        groupValue: _selectedOption,
                        onChanged: (String? value) {
                          setState(() {
                            _selectedOption = value;
                          });
                        },
                        activeColor: CustomColor.blueColor,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    tr("Enter CVV & OTP code for a swift & hassle-free payment verification."),
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              color: CustomColor.lightGrey,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tr("Device"),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        tr("Set Device as Trusted"),
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const Expanded(child: SizedBox()),
                      Switch(
                        value: _isDeviceTrusted,
                        onChanged: (bool value) {
                          if (value) {
                            diveVerification(context);
                          } else {
                            setState(() {
                              _isDeviceTrusted = false;
                            });
                          }
                        },
                        activeColor: Colors.white,
                        activeTrackColor: CustomColor.blueColor,
                        inactiveTrackColor: Colors.grey,
                        inactiveThumbColor: Colors.white,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Text(
                    tr("Activate to set a PIN and manage device connectivity."),
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 30,
              width: double.infinity,
              color: CustomColor.lightGrey,
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                tr("PIN"),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.setPin);
              },
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          tr("Set PIN"),
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                        ),
                        Expanded(
                          child: SizedBox(),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: CustomColor.lightGreyColor,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      tr("Set a 6-digit verification PIN to secure your account's activities."),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        height: 1.5,
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

  void diveVerification(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: const Text('Set as Trusted Device?'),
          content: const Text('Do you want to set this device as trusted?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('Confirm'),
              onPressed: () {
                setState(() {
                  _isDeviceTrusted = true;
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
