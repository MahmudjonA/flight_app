import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:milan_flight_app/account/widgets/notification_widget.dart';

class NotificationSettings extends StatefulWidget {
  const NotificationSettings({super.key});

  @override
  State<NotificationSettings> createState() => _NotificationSettingsState();
}

class _NotificationSettingsState extends State<NotificationSettings> {
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
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tr("Notification Settings"),
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                tr("Push Notification Disabled"),
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    tr("To enable notifications, go to"),
                    style: TextStyle(fontSize: 16),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      tr("Settings"),
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20),
              NotificationWidget(
                about: tr('Activity'),
                title: tr(
                    'Secure your account by keeping your log in, register, and OTP activity on track.'),
              ),
              NotificationWidget(
                about: tr('Special For You'),
                title: tr(
                    'You can never have too much of limited-time discount, exclusive offers, tips and info new feature.'),
              ),
              NotificationWidget(
                about: tr('Reminders'),
                title: tr(
                    'Get important travel news and info, payment reminders, check-in reminder and more.'),
              ),
              NotificationWidget(
                about: tr('Membership'),
                title: tr(
                    'You’ll get emails about ticket Elite Rewards and surveys.'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
