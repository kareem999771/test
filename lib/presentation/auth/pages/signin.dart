import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:movie/common/helper/navigation/app_navigation.dart';
import 'package:movie/core/configs/theme/app_colors.dart';
import 'package:movie/presentation/auth/pages/signup.dart';
import 'package:reactive_button/reactive_button.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: EdgeInsets.only(top: 100, right: 16, left: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _signinText(),
              const SizedBox(
                height: 30,
              ),
              _emailField(),
              const SizedBox(
                height: 20,
              ),
              _passwordField(),
              const SizedBox(
                height: 60,
              ),
              _signinButton(context),
              const SizedBox(
                height: 20,
              ),
              _signupText(context),
            ],
          )),
    );
  }

  Widget _signinText() {
    return const Text(
      'Sign In',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
    );
  }

  Widget _emailField() {
    return TextField(
      decoration: const InputDecoration(hintText: 'Email'),
    );
  }

  Widget _passwordField() {
    return TextField(
      decoration: const InputDecoration(hintText: 'Password'),
    );
  }
}

Widget _signinButton(BuildContext context) {
  return ReactiveButton(
    title: 'Sign In',
    activeColor: AppColors.primary,
    onPressed: () async {},
    onSuccess: () {},
    onFailure: (error) {},
  );
}

Widget _signupText(BuildContext context) {
  return Text.rich(TextSpan(children: [
    const TextSpan(text: "Don't you have account?"),
    TextSpan(
        text: ' Sign Up',
        style: const TextStyle(color: Colors.blue),
        recognizer: TapGestureRecognizer()
          ..onTap = () {
            AppNavigator.push(context, SignupPage());
          })
  ]));
}
