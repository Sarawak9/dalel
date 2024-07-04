import 'package:dalel/core/databases/cach/cach_helper.dart';
import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    _checkOnBoardingStatus();
  }

  void _checkOnBoardingStatus() async {
    bool isOnBoardingVisited =
        CacheHelper().getData(key: "isOnBoardingVisited") ?? false;

    if (isOnBoardingVisited) {
      delayedNavigate(context, "/signUp");
    } else {
      delayedNavigate(context, "/onBoarding");
    }
  }

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

void delayedNavigate(context, path) {
  Future.delayed(const Duration(seconds: 2), () {
    customReplacementNavigate(context, path);
  });
}
