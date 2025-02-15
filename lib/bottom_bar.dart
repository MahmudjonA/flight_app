import 'package:flutter/material.dart';
import 'package:milan_flight_app/transaction/transaction_page.dart';

import '../core/constants/color.dart';
import 'account/account.dart';
import 'home/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const TransactionPage(),
    const AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColor.blueColor,
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue, // Selected icon color
        unselectedItemColor: Colors.grey, // Unselected icon color
        selectedLabelStyle: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 12,
        ),
        onTap: (int newIndex) {
          setState(() {
            _currentIndex = newIndex;
          });
        },
        items: [
          BottomNavigationBarItemWidget(
            "Home",
            Icons.home,
          ),
          BottomNavigationBarItemWidget(
            "Transaction",
            Icons.confirmation_num,
          ),
          BottomNavigationBarItemWidget(
            "Account",
            Icons.account_circle,
          ),
        ],
      ),
    );
  }
}

BottomNavigationBarItem BottomNavigationBarItemWidget(
    String label, IconData iconData) {
  return BottomNavigationBarItem(
    label: label,
    icon: Icon(
      iconData,
      size: 24,
    ),
  );
}
