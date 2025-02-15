import 'package:flutter/material.dart';

import '../../core/constants/color.dart';

class WeightSelection extends StatefulWidget {
  const WeightSelection({super.key});

  @override
  State<WeightSelection> createState() => _WeightSelectionState();
}

class _WeightSelectionState extends State<WeightSelection> {
  int selectedWeight = 5; // Default selected weight

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // 0 Kg Option
        GestureDetector(
          onTap: () {
            setState(() {
              selectedWeight = 0;
            });
          },
          child: WeightCard(
            isSelected: selectedWeight == 0,
            weight: "0 Kg",
            price: "Free",
          ),
        ),
        // 5 Kg Option
        GestureDetector(
          onTap: () {
            setState(() {
              selectedWeight = 5;
            });
          },
          child: WeightCard(
            isSelected: selectedWeight == 5,
            weight: "5 Kg",
            price: "Rp 210.000",
          ),
        ),
        // 10 Kg Option
        GestureDetector(
          onTap: () {
            setState(() {
              selectedWeight = 10;
            });
          },
          child: WeightCard(
            isSelected: selectedWeight == 10,
            weight: "10 Kg",
            price: "Rp 510.000",
          ),
        ),
      ],
    );
  }
}

class WeightCard extends StatelessWidget {
  final bool isSelected;
  final String weight;
  final String price;

  const WeightCard({
    super.key,
    required this.isSelected,
    required this.weight,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130, // Adjust width as needed
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: isSelected ? CustomColor.blueColor : Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: isSelected ? CustomColor.blueColor : const Color.fromRGBO(13, 22, 52, 0.05),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            weight,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          Text(
            price,
            style: TextStyle(
              color: isSelected ? Colors.white : Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
