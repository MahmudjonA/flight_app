import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:milan_flight_app/account/widgets/custom_container.dart';
import 'package:milan_flight_app/core/route/rout_names.dart';
import '../core/constants/color.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  bool _isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              height: 260,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: CustomColor.blueColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                      tr("My Profile"),
                      style: const TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Row(
                      children: [
                        Image.asset("assets/images/profile_img.png",
                            height: 80, width: 80),
                        const SizedBox(
                          width: 15,
                        ),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Jos Creative",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "josphamdes@gmail.com",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "+1 654 785 4462",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.edit_calendar_outlined,
                              color: Colors.white, size: 28),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomContainer(
                    iconData_1: Icons.navigation_outlined,
                    text: tr("My Order"),
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 70,
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: CustomColor.lightGreyColor,
                            width: 1.0,
                          ),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {},
                        child:  Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            children: [
                              const Icon(Icons.percent, color: CustomColor.blueColor),
                              const SizedBox(width: 10),
                              Text(
                               tr( "My Voucher"),
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  CustomContainer(
                    iconData_1: Icons.payment,
                    text: tr("Payment Methods"),
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  CustomContainer(
                    iconData_1: Icons.person_add_alt_outlined,
                    text: tr("Invite Friends"),
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: SizedBox(
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          children: [
                            const Icon(Icons.qr_code_scanner_outlined,
                                color: CustomColor.blueColor),
                            const SizedBox(width: 10),
                             Text(
                              tr("Quick Login"),
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            Switch(
                              value: _isSwitched,
                              onChanged: (bool value) {
                                setState(() {
                                  _isSwitched = value;
                                });
                              },
                              activeColor: Colors.white,
                              activeTrackColor: CustomColor.blueColor,
                              inactiveTrackColor: Colors.grey,
                              inactiveThumbColor: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  CustomContainer(
                    iconData_1: Icons.question_mark_rounded,
                    text: tr("My Order"),
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  const SizedBox(height: 10),
                  CustomContainer(
                    iconData_1: Icons.settings,
                    text: tr("Settings"),
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {
                      Navigator.pushNamed(context, RouteNames.settingPage);
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomContainer(
                    iconData_1: Icons.login_outlined,
                    text: tr("Log Out"),
                    iconData_2: Icons.arrow_forward_ios_outlined,
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
