import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart'; // import easy_localization
import '../../core/constants/color.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  String? _selectedLanguage;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Get the current locale from context
    final locale = context.locale.languageCode;
    _selectedLanguage = locale == 'en' ? 'English' : 'Russian';
  }

  void _changeLanguage(String? language) {
    if (language == null) return;

    setState(() {
      _selectedLanguage = language;
    });

    if (language == 'English') {
      context.setLocale(const Locale('en', 'US'));
    } else if (language == 'Russian') {
      context.setLocale(const Locale('ru', 'RU'));
    }
  }

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr("Language"),
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            _buildLanguageOption(
              title: tr("English"),
              value: 'English',
            ),
            _buildLanguageOption(
              title: tr("Russian"),
              value: 'Russian',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLanguageOption({required String title, required String value}) {
    return Container(
      height: 70,
      width: double.infinity,
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
          Text(title),
          const Spacer(),
          Radio<String>(
            value: value,
            groupValue: _selectedLanguage,
            onChanged: (String? value) {
              _changeLanguage(value);
            },
          ),
        ],
      ),
    );
  }
}
