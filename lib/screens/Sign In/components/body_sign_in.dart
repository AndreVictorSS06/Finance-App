import 'package:flutter/material.dart';

import '../../../components/build_divider.dart';
import '../../../constants.dart';
import 'form_sign_in.dart';

class BodySignIn extends StatelessWidget {
  const BodySignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/sign_in.png",
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Welcome Back!",
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
          ),
          const SizedBox(height: 5),
          const Text(
            "Let's Login for explore continues",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 10),
          const FormSignIn(),
          const SizedBox(height: 10),
          const BuildDivider()
        ],
      ),
    );
  }
}
