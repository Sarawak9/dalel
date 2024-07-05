import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class welcomeTextWidget extends StatelessWidget {
  const welcomeTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Text(
        text,
        style: CustomTextStyles.poppins600style28,
      ),
    );
  }
}
