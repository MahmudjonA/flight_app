import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class NotificationWidget extends StatefulWidget {
  final String title;
  final String about;

  const NotificationWidget({
    super.key,
    required this.about,
    required this.title,
  });

  @override
  State<NotificationWidget> createState() => _CustomColumnState();
}

class _CustomColumnState extends State<NotificationWidget> {
  bool isEmailEnabled = false;
  bool isPushNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.about,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          widget.title,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              tr("Email"),
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Switch(
              value: isEmailEnabled,
              onChanged: (bool value) {
                setState(() {
                  isEmailEnabled = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: CustomColor.blueColor,
              inactiveTrackColor: Colors.grey,
              inactiveThumbColor: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Text(
              tr("Push Notification"),
              style: TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Switch(
              value: isPushNotificationEnabled,
              onChanged: (bool value) {
                setState(() {
                  isPushNotificationEnabled = value;
                });
              },
              activeColor: Colors.white,
              activeTrackColor: CustomColor.blueColor,
              inactiveTrackColor: Colors.grey,
              inactiveThumbColor: Colors.white,
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
