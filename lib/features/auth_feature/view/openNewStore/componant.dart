import 'package:clean_arc/core/presentation/widget/text_app.dart';
import 'package:flutter/material.dart';

// Base Store View widget
class BaseStoreView extends StatelessWidget {
  final List<Widget> children;

  const BaseStoreView({required this.children});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
              SizedBox(height: 16.0),
              ...children,
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDropdownField extends StatelessWidget {
  final String hintText;
  final Color fillColor;
  final List<String> options;

  const CustomDropdownField({
    required this.hintText,
    required this.fillColor,
    required this.options,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: InputDecoration(
        hintText: hintText,
        filled: true,
        fillColor: fillColor,
        contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),
      ),
      items: options.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? newValue) {},
    );
  }
}

List<String> generateHintTextsForSupportSettingsView() {
  return [
    'رقم الهاتف',
    'البريد الإلكتروني',
    'العنوان',
    'العنوان 1',
    'العنوان 2',
    'بلد',
    'المدينة /البلدة',
    'الرمز البريدي / تخزين الرمز البريدي',
    'ولاية / مقاطعة',
    'الرمز البريدي / تخزين الرمز البريدي',
  ];
}

List<String> generateHintTextsForSocialStoreSettingsView() {
  return [
    ' تويتر',
    ' فيسبوك',
    'انستغرام',
    ' يوتيوب',
    ' لينكدان',
    'جوجل بلاس',
    ' سناب شات',
    'بينسريست',
  ];
}
