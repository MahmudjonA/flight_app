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

void showDeals(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    builder: (BuildContext context) {
      return SafeArea(
        child: Container(
          width: double.infinity,
          height: 400,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(24),
              topLeft: Radius.circular(24),
            ),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, top: 40, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Add Baggage",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 24),
                const Text(
                  "1. Matt Murdock",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 8),
                const WeightSelection(),
                const SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: const Color.fromRGBO(13, 22, 52, 0.05),
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1. Matt Murdock",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: CustomColor.greyColor,
                              ),
                            ),
                            Text(
                              "Rp. 210.000",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: CustomColor.greyColor,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total ",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: CustomColor.greyColor,
                              ),
                            ),
                            Text(
                              "Rp. 210.000",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () { Navigator.pop(context); },
                  child: Container(
                    width: double.infinity,
                    height: 48,
                    decoration: BoxDecoration(
                      color: CustomColor.blueColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.add_circle, color: Colors.white),
                        Text(
                          "Add Baggage",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      );
    },
  );
}
