import 'package:flutter/material.dart';
import '../../../core/constants/color.dart';

class CustomContainer extends StatelessWidget {
  final IconData iconData_1;
  final String text;
  final IconData iconData_2;
  final VoidCallback onTap;

  const CustomContainer({
    super.key,
    required this.iconData_1,
    required this.text,
    required this.iconData_2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: CustomColor.lightGreyColor,
              width: 1.0,
            ),
          ),
        ),
        child: Row(
          children: [
            Icon(iconData_1, color: CustomColor.blueColor),
            const SizedBox(width: 10),
            Text(
              text,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Icon(iconData_2, color: CustomColor.lightGreyColor),
          ],
        ),
      ),
    );
  }
}
