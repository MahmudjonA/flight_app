import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:milan_flight_app/account/widgets/setting_widget.dart';
import '../core/constants/color.dart';
import '../core/route/rout_names.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _isLocationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              Text(tr("Settings"),
                  style: const TextStyle(
                      fontSize: 28, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),

              // General Section
              Text(tr("General"),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500)),
              const SizedBox(height: 10),
              SettingWidget(
                text: tr('Language'),
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.languagePage);
                },
              ),
              SettingWidget(
                text: tr('Notification Settings'),
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.notificationOPage);
                },
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(
                    tr("Location"),
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  const Spacer(),
                  Switch(
                    value: _isLocationEnabled,
                    onChanged: (bool value) {
                      setState(() {
                        _isLocationEnabled = value;
                      });
                    },
                    activeColor: Colors.white,
                    activeTrackColor: CustomColor.blueColor,
                    inactiveTrackColor: Colors.grey,
                    inactiveThumbColor: Colors.white,
                  ),
                ],
              ),

              // Account & Security Section
              const SizedBox(height: 20),
              Text(tr("Account & Security"),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500)),
              const SizedBox(height: 10),
              SettingWidget(
                text: tr('Email and Mobile Number'),
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.phoneNumberEmail);
                },
              ),
              SettingWidget(
                text: tr('Security Settings'),
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.securitySettings);
                },
              ),
              SettingWidget(
                text: tr('Delete Account'),
                onTap: () {
                  Navigator.pushNamed(context, RouteNames.deleteAccount);
                },
              ),
              const SizedBox(height: 20),
              Text(tr("Other"),
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500)),
              const SizedBox(height: 10),
              SettingWidget(
                text: tr('Privacy Policy'),
                onTap: () {},
              ),
              SettingWidget(
                text: tr('Terms and Conditions'),
                onTap: () {},
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Text(tr("Version"), style: const TextStyle(fontSize: 16)),
                  const Spacer(),
                  const Text("v4.87.2")
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
