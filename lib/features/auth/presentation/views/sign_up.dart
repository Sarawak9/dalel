import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_btn.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/have_an_account_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_and_condition_widget.dart';
import 'package:dalel/features/auth/presentation/widgets/welcome_text_widget.dart';
import 'package:flutter/material.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(right: 8.0, left: 8.0, top: 24),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: 100,
              ),
            ),
            SliverToBoxAdapter(
              child: welcomeTextWidget(text: AppStrings.welcome),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 16,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomTextFormField(labelText: AppStrings.fristName),
            ),
            SliverToBoxAdapter(
              child: CustomTextFormField(labelText: AppStrings.lastName),
            ),
            SliverToBoxAdapter(
              child: CustomTextFormField(labelText: AppStrings.emailAddress),
            ),
            SliverToBoxAdapter(
              child: CustomTextFormField(labelText: AppStrings.password),
            ),
            SliverToBoxAdapter(
              child: TermsAndConditionWidget(),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 44,
              ),
            ),
            SliverToBoxAdapter(
              child: CustomBtn(onPressed: () {}, text: AppStrings.signUp),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 14,
              ),
            ),
            SliverToBoxAdapter(
              child: HaveAnAccountWidget(
                text1: AppStrings.alreadyHaveAnAccount,
                text2: AppStrings.signUp,
              ),
            )
          ],
        ),
      ),
    );
  }
}
