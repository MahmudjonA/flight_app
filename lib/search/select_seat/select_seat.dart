import 'package:flutter/material.dart';
import 'widgets/flight_details.dart';
import 'widgets/seat_map.dart';
import 'widgets/selected_seat_info.dart';
import 'widgets/slide_to_book_button.dart';

class SeatBookingPage extends StatefulWidget {
  const SeatBookingPage({super.key});

  @override
  _SeatBookingPageState createState() => _SeatBookingPageState();
}

class _SeatBookingPageState extends State<SeatBookingPage> {
  List<List<int>> seatStatus = [
    [1, 0, 1, 3, 1, 1, 1],
    [1, 0, 1, 3, 0, 0, 1],
    [0, 1, 2, 3, 1, 1, 0],
    [1, 0, 0, 3, 1, 0, 1],
    [0, 0, 0, 3, 0, 0, 0],
    [1, 1, 1, 3, 0, 1, 1],
    [0, 1, 1, 3, 0, 1, 0],
    [1, 0, 0, 3, 1, 0, 1],
  ];

  String selectedSeat = "None";

  void onSeatTapped(int row, int col) {
    setState(() {
      for (int i = 0; i < seatStatus.length; i++) {
        for (int j = 0; j < seatStatus[i].length; j++) {
          if (seatStatus[i][j] == 2) {
            // Deselect previously selected seat
            seatStatus[i][j] = 1;
          }
        }
      }
      // Select the new seat
      seatStatus[row][col] = 2;
      selectedSeat = "${row + 1}${String.fromCharCode(65 + col)}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
         "Passenger Info",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const FlightDetails(),
          Expanded(
            child: SeatMap(
              seatStatus: seatStatus,
              onSeatTapped: onSeatTapped,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SelectedSeatInfo(selectedSeat: selectedSeat),
            ),
          ),
          SlideToBookButton(
            isEnabled: selectedSeat != "None",
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
