import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
          onPressed: () {
            customNavigate(context, "/signUp");
          },
          icon: const Icon(Icons.logout),
        )
      ]),
    );
  }

  // Widget build(BuildContext context) {
  //   return const Scaffold(
  //     body: CustomScrollView(
  //       slivers: [
  //         SliverToBoxAdapter(
  //           child: WelcomBanner(),
  //         )
  //       ],
  //     ),
  //   );
  // }
}

// class WelcomBanner extends StatelessWidget {
//   const WelcomBanner({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         height: 290,
//         decoration: BoxDecoration(color: AppColors.primaryColor),
//         child: const Column(
//           mainAxisAlignment: MainAxisAlignment.end,
//           children: [
//             Text(
//               AppStrings.appName,
//               style: CustomTextStyles.saira700style32,
//             )
//           ],
//         ));
//   }
// }
