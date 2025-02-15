import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class SeatMap extends StatelessWidget {
  final List<List<int>> seatStatus;
  final Function(int, int) onSeatTapped;

  const SeatMap({
    super.key,
    required this.seatStatus,
    required this.onSeatTapped,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: CustomColor.lightGrey,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                7,
                    (index) => Expanded(
                  child: Text(
                    String.fromCharCode(65 + index),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: CustomColor.greyColor,
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: seatStatus.length,
                itemBuilder: (context, rowIndex) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: List.generate(
                        seatStatus[rowIndex].length,
                            (colIndex) {
                          if (colIndex == 3) {
                            return Expanded(
                              child: Center(
                                child: Text(
                                  (rowIndex + 1).toString(),
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            );
                          }
                          if (seatStatus[rowIndex][colIndex] == 0) {
                            return Expanded(
                              child: Container(
                                margin: const EdgeInsets.all(4.0),
                                width: 50,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child:  const Center(
                                  child: Icon(
                                    Icons.close,
                                    color: CustomColor.cyn,
                                  ),
                                ),
                              ),
                            );
                          }

                          // For available or selected seats
                          return Expanded(
                            child: GestureDetector(
                              onTap: () {
                                onSeatTapped(rowIndex, colIndex);
                              },
                              child: Container(
                                margin: const EdgeInsets.all(4.0),
                                width: 50,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: seatStatus[rowIndex][colIndex] == 1
                                      ? CustomColor.round
                                      : CustomColor.blueColor,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color:CustomColor.blueColor,
                                    width: 2,
                                  ),
                                ),
                                child: Center(
                                  child: seatStatus[rowIndex][colIndex] == 2
                                      ? const Icon(
                                    Icons.check,
                                    color: Colors.white,
                                  )
                                      : null,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Selected
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 12,
                        backgroundColor: CustomColor.blueColor,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                          size: 14,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Selected', // "SELECTED"
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  // Available
                  Row(
                    children: [
                       CircleAvatar(
                        radius: 12,
                        backgroundColor:CustomColor.round,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Available', // "AVAILABLE"
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  // Not Available
                  Row(
                    children: [
                       CircleAvatar(
                        radius: 12,
                        backgroundColor: CustomColor.round,
                        child: Icon(
                          Icons.close,
                          color: CustomColor.blueColor,
                          size: 14,
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        'NotAvailable', // "NOT AVAILABLE"
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
