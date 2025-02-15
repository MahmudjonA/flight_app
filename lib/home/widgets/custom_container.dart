import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class CustomContainer extends StatelessWidget {
  final String info;
  final IconData icon;

  const CustomContainer({super.key, required this.info, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15, top: 10),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: 50,
        decoration: const BoxDecoration(
          color: CustomColor.lightGreyColor,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: CustomColor.blueColor,
            ),
            const SizedBox(width: 20),
            Text(info),
          ],
        ),
      ),
    );
  }
}
