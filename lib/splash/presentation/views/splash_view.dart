import 'package:flutter/material.dart';
import 'package:dalel/core/utils/app_strings';
import 'package:dalel/core/utils/app_text_style';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          AppStrings.appName,
          style: CustomTextStyles.pacifico400style64,
        ),
      ),
    );
  }
}
