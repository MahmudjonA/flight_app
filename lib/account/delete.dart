import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../core/constants/color.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_rounded),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr("Delete Account"),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Center(child: Image.asset("assets/images/delete.png")),
            const SizedBox(height: 20),
            Text(
              tr("You sure want to \ndelete your account?"),
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              tr('If you delete your account:'),
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading:
                  Text('\u2022', style: TextStyle(fontSize: 16, height: 1.55)),
              title: Text(
                  tr('Your remaining ticket Points cannot be used anymore.'),
                  style: TextStyle(fontSize: 16)),
            ),
            ListTile(
              leading:
                  Text('\u2022', style: TextStyle(fontSize: 16, height: 1.55)),
              title: Text(
                  tr('Your ticket Elite Rewards benefits will not be available anymore.'),
                  style: TextStyle(fontSize: 16)),
            ),
            ListTile(
              leading:
                  Text('\u2022', style: TextStyle(fontSize: 16, height: 1.55)),
              title: Text(tr('All your pending rewards will be deleted.'),
                  style: TextStyle(fontSize: 16)),
            ),
            ListTile(
              leading:
                  Text('\u2022', style: TextStyle(fontSize: 16, height: 1.55)),
              title: Text(
                  tr('All rewards from using credit card can no longer be obtained.'),
                  style: TextStyle(fontSize: 16)),
            ),
            Row(
              children: [
                Checkbox(
                  value: _isChecked,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked = value ?? false;
                    });
                  },
                ),
                Expanded(
                  child: Text(
                    tr("I understand and accept all the above risks regarding my account deletion."),
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: _isChecked ? _deleteAccount : null,
              child: Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: _isChecked
                      ? CustomColor.blueColor
                      : const Color(0xffDAEBFF),
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                ),
                child: Center(
                  child: Text(
                    tr("Yes, Continue"),
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void _deleteAccount() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Account deleted successfully")),
    );
  }
}
