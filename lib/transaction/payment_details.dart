import 'package:flutter/material.dart';
import '../core/constants/color.dart';
import '../core/route/rout_names.dart';

class PaymentDetails extends StatefulWidget {
  const PaymentDetails({super.key});

  @override
  State<PaymentDetails> createState() => _PaymentDetailsState();
}

class _PaymentDetailsState extends State<PaymentDetails> {
  String _selectedPaymentMethod = 'MasterCard';

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
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Digital payment method(s)",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Swipe left to set your default method",
              style: TextStyle(fontSize: 14, color: CustomColor.greyColor),
            ),
            const SizedBox(height: 32),
            ListTile(
              leading: const Icon(Icons.credit_card, size: 32), // Replaced image with icon
              title: const Text('***8976'),
              subtitle: const Text('Get 10\$ Discount'),
              trailing: Radio<String>(
                value: 'MasterCard',
                groupValue: _selectedPaymentMethod,
                activeColor: CustomColor.blueColor,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.account_balance_wallet, size: 32), // Replaced image with icon
              title: const Text('Paypal'),
              subtitle: const Text('Get 10\$ Discount'),
              trailing: Radio<String>(
                value: 'Paypal',
                groupValue: _selectedPaymentMethod,
                activeColor: CustomColor.blueColor,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value!;
                  });
                },
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              "Add methods",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 24),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.credit_card, size: 32), // Replaced image with icon
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit or debit card",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Visa, Mastercard, AMEX and JCB",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500, color: CustomColor.greyColor),
                        ),
                        Row(
                          children: [
                            Icon(Icons.check_circle, size: 16),
                            SizedBox(width: 8),
                            Text("Get 10\$ Discount",  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: CustomColor.greyColor,)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Add",
                  style: TextStyle(
                    color: CustomColor.blueColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Divider(height: 50,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.refresh, size: 32), // Replaced image with icon
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit or debit card",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Transferring via ATM, Internet \nBanking & Mobile Banking",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500, color: CustomColor.greyColor),
                        ),
                        Row(
                          children: [
                            Icon(Icons.check_circle, size: 16),
                            SizedBox(width: 8),
                            Text("Get 10\$ Discount",  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500, color: CustomColor.greyColor,)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "Add",
                  style: TextStyle(
                    color: CustomColor.blueColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Subtotal",
                          style: TextStyle(
                            fontSize: 14,
                            color: CustomColor.greyColor,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(width: 2),
                        Icon(Icons.expand_more, size: 16),
                      ],
                    ),
                    Text(
                      "\$132",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, RouteNames.passcode);
                  },
                  child: Container(
                    width: 245,
                    height: 48,
                    decoration: BoxDecoration(
                      color: CustomColor.blueColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Proceed The Payment",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.check_circle, color: Colors.white, size: 24),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
