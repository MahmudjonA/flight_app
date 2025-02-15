import 'package:flutter/material.dart';
import 'package:milan_flight_app/auth/sign_in_page.dart';
import 'package:milan_flight_app/core/route/rout_names.dart';
import 'package:milan_flight_app/onboarding/onboarding_page1.dart';
import 'package:milan_flight_app/onboarding/onboarding_page2.dart';
import 'package:milan_flight_app/onboarding/onboarding_page3.dart';
import 'package:milan_flight_app/search/booking_details.dart';
import 'package:milan_flight_app/search/contact_details.dart';
import 'package:milan_flight_app/search/passenger_info.dart';
import 'package:milan_flight_app/search/select_seat/select_seat.dart';
import 'package:milan_flight_app/search/tickets.dart';
import 'package:milan_flight_app/transaction/confirmation.dart';
import 'package:milan_flight_app/transaction/if_have_transaction_details.dart';
import 'package:milan_flight_app/transaction/passcode.dart';
import 'package:milan_flight_app/transaction/payment_details.dart';

import '../../account/delete.dart';
import '../../account/language.dart';
import '../../account/notification.dart';
import '../../account/phone_email.dart';
import '../../account/security.dart';
import '../../account/set_pin.dart';
import '../../account/settings.dart';
import '../../auth/sign_up_page.dart';
import '../../bottom_bar.dart';

class AppRoute {
  BuildContext context;

  AppRoute({required this.context});

  Route onGenerateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case RouteNames.onboardingPage_1:
        return MaterialPageRoute(builder: (_) => const OnboardingPage1());
      case RouteNames.onboardingPage_2:
        return MaterialPageRoute(builder: (_) => const OnboardingPage2());
      case RouteNames.onboardingPage_3:
        return MaterialPageRoute(builder: (_) => const OnboardingPage3());
      case RouteNames.signInPage:
        return MaterialPageRoute(builder: (_) => const SignInPage());
      case RouteNames.signUpPage:
        return MaterialPageRoute(builder: (_) => const SignUpPage());
      case RouteNames.bottomNavBar:
        return MaterialPageRoute(builder: (_) => const BottomNavBar());
      case RouteNames.settingPage:
        return MaterialPageRoute(builder: (_) => const SettingsPage());
      case RouteNames.languagePage:
        return MaterialPageRoute(builder: (_) => const LanguagePage());
      case RouteNames.notificationOPage:
        return MaterialPageRoute(builder: (_) => const NotificationSettings());
      case RouteNames.phoneNumberEmail:
        return MaterialPageRoute(builder: (_) => const PhoneEmailPage());
      case RouteNames.securitySettings:
        return MaterialPageRoute(builder: (_) => const SecuritySettings());
      case RouteNames.deleteAccount:
        return MaterialPageRoute(builder: (_) => const DeleteAccount());
      case RouteNames.setPin:
        return MaterialPageRoute(builder: (_) => const SetPin());
      case RouteNames.transactionDetails:
        return MaterialPageRoute(builder: (_) => const TransactionDetails());
      case RouteNames.bookingDetailPage:
        return MaterialPageRoute(builder: (_) => const BookingDetailPage());
      case RouteNames.selectSeat:
        return MaterialPageRoute(builder: (_) => const SeatBookingPage());
      case RouteNames.paymentDetails:
        return MaterialPageRoute(builder: (_) => const PaymentDetails());
      case RouteNames.confirmation:
        return MaterialPageRoute(builder: (_) => const Confirmation());
      case RouteNames.passcode:
        return MaterialPageRoute(builder: (_) => const Passcode());
      case RouteNames.flightCardPage:
        return MaterialPageRoute(builder: (_) => const FlightCardPage());
      case RouteNames.contactDetails:
        return MaterialPageRoute(builder: (_) => const ContactDetails());
      case RouteNames.passengerInfo:
        return MaterialPageRoute(builder: (_) => const PassengerInfo());
      default:
        return _errorRoute();
    }
  }

  Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      ),
    );
  }
}
