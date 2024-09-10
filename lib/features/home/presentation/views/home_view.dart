import 'package:dalel/core/functions/navigation.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          onPressed: () {
            customNavigate(context, "/signUp");
          },
          icon: const Icon(Icons.logo_dev_sharp),
        )
      ]),
    );
  }
}
