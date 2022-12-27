import 'package:flutter/material.dart';

import '../../../components/default_button.dart';
import '../../../constants.dart';

class FormSignIn extends StatefulWidget {
  const FormSignIn({super.key});

  @override
  State<FormSignIn> createState() => _FormSignInState();
}

class _FormSignInState extends State<FormSignIn> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          const SizedBox(height: 20),
          buildEmailFormField(),
          const SizedBox(height: 20),
          buildPasswordFormField(),
          const SizedBox(height: 8),
          buildForgotPassword(),
          const SizedBox(height: 10),
          DefaultButton(
            label: 'Sign In',
            press: () {
              if (_formKey.currentState!.validate()) {}
            },
          )
        ],
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field cannot be empty!";
        } else if (!emailIsValid.hasMatch(value)) {
          return "Email not valid!";
        }
        return null;
      },
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Email",
        hintText: "Enter your Email",
        labelStyle: TextStyle(
          color: Colors.black54,
        ),
        prefixIcon: Icon(
          Icons.email_outlined,
          color: kPrimaryColor,
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field cannot be empty";
        } else if (value.length <= 8) {
          return "At least 8 characters required";
        }
        return null;
      },
      obscureText: true,
      decoration: const InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Password",
        hintText: "Password",
        labelStyle: TextStyle(
          color: Colors.black54,
        ),
        prefixIcon: Icon(
          Icons.lock_outline,
          color: kPrimaryColor,
        ),
        suffixIcon: Icon(
          Icons.remove_red_eye_outlined,
          color: kPrimaryColor,
        ),
      ),
    );
  }

  Row buildForgotPassword() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: const Text(
            "Forgot Password?",
            style: TextStyle(
              color: kPrimaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
