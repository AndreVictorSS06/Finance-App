import 'package:flutter/material.dart';

import 'components/body_sign_up.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodySignUp(),
    );
  }
}
