import 'package:finance_app/components/build_divider.dart';
import 'package:flutter/material.dart';
import '../../../components/sign_up_default_button.dart';
import '../../../constants.dart';
import 'form_sign_up.dart';

class BodySignUp extends StatelessWidget {
  const BodySignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  Image.asset("assets/images/sign_up.png"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Let's Get Started",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const Text(
              "Create an account to get all features",
              style: TextStyle(
                fontSize: 15,
                color: Colors.black45,
              ),
            ),
            const SizedBox(height: 12),
            const FormSignUp(),
            const SizedBox(height: 6),
            const BuildDivider(),
            const SizedBox(height: 6),
            const DefaultButtonSignUp(),
            const SizedBox(height: 9),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have account? ",
                  style: TextStyle(fontSize: 16),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/sign_in');
                  },
                  child: const Text(
                    "Sign In",
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
