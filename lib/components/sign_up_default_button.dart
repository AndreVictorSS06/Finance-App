import "package:flutter/material.dart";
import 'package:flutter_svg/svg.dart';

class DefaultButtonSignUp extends StatelessWidget {
  const DefaultButtonSignUp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton.icon(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
              side: const BorderSide(
                color: Colors.blueGrey,
                width: 2.4,
              ),
            ),
          ),
        ),
        onPressed: () {},
        icon: SvgPicture.asset(
          "assets/icons/google_icon.svg",
          height: 30,
        ),
        label: const Text(
          "Sign Up With Google",
          style: TextStyle(
            color: Colors.blueGrey,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
