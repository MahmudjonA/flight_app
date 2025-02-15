import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../core/route/rout_names.dart';
import '../core/constants/color.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            Text(
              tr("Sign in"),
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              tr("Start Your Journey with affordable price"),
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: CustomColor.greyColor,
              ),
            ),
            const SizedBox(height: 38),
            Text(
              tr('EMAIL'),
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: CustomColor.greyColor,
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: tr('Enter Your Email'),
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Text(
              tr('PASSWORD'),
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: CustomColor.greyColor,
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: tr('Enter Your Password'),
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, RouteNames.bottomNavBar);
              },
              child: Container(
                decoration: BoxDecoration(
                  color: CustomColor.blueColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 48,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      tr("Sign in"),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(
                      Icons.check_circle,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Center(
              child: Text(
                tr("Or Sign In With"),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: CustomColor.greyColor,
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 108,
                  height: 74,
                  decoration: BoxDecoration(
                    color: CustomColor.lightGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    "assets/images/facebook.png",
                  ),
                ),
                Container(
                  width: 108,
                  height: 74,
                  decoration: BoxDecoration(
                    color: CustomColor.lightGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    "assets/images/google.png",
                  ),
                ),
                Container(
                  width: 108,
                  height: 74,
                  decoration: BoxDecoration(
                    color: CustomColor.lightGrey,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.asset(
                    "assets/images/apple.png",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  tr("Don’t Have an Account?"),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: CustomColor.greyColor,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RouteNames.signUpPage);
                  },
                  child: Text(
                    tr("Sign up"),
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: CustomColor.blueColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
