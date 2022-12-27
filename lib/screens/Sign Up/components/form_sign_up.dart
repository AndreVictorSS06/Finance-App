import 'package:flutter/material.dart';
import '../../../components/default_button.dart';
import '../../../constants.dart';

class FormSignUp extends StatefulWidget {
  const FormSignUp({super.key});

  @override
  State<FormSignUp> createState() => _FormSignUpState();
}

class _FormSignUpState extends State<FormSignUp> {
  String? name;
  String? email;
  String? password;
  String? confirmPassword;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildNameTextFormField(),
          const SizedBox(height: 14),
          buildEmailTextFormField(),
          const SizedBox(height: 14),
          buildPasswordTextFormField(),
          const SizedBox(height: 14),
          buildConfPasswordTextFormField(),
          const SizedBox(height: 18),
          DefaultButton(
            label: 'Sign Up',
            press: () {
              if (_formKey.currentState!.validate()) {}
            },
          ),
        ],
      ),
    );
  }

  //Methods for Input Users

  TextFormField buildConfPasswordTextFormField() {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field cannot be empty";
        } else if (password != value) {
          return 'Passwords Differents ';
        }
        return null;
      },
      //obscureText: true,
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        labelStyle: TextStyle(color: Colors.black45),
        labelText: 'Confirm Password: ',
        hintText: "Confirm Password ",
        prefixIcon: Icon(
          Icons.lock_outline,
          color: Colors.black45,
        ),
        suffixIcon: Icon(
          Icons.remove_red_eye_outlined,
          color: Colors.black45,
        ),
      ),
    );
  }

  TextFormField buildPasswordTextFormField() {
    return TextFormField(
      obscureText: true,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field cannot be empty";
        } else if (value.length < 8) {
          return "Required 8 characters";
        }
        password = value;
        return null;
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        labelStyle: TextStyle(color: Colors.black45),
        labelText: 'Password: ',
        hintText: "Password ",
        prefixIcon: Icon(
          Icons.lock_outline,
          color: Colors.black45,
        ),
        suffixIcon: Icon(
          Icons.remove_red_eye_outlined,
          color: Colors.black45,
        ),
      ),
    );
  }

  TextFormField buildEmailTextFormField() {
    return TextFormField(
      validator: (value) {
        if (!emailIsValid.hasMatch(value!)) {
          return "Email not valid";
        }
        return null;
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        labelStyle: TextStyle(color: Colors.black45),
        labelText: 'Email: ',
        hintText: "enter your email ",
        prefixIcon: Icon(
          Icons.email_outlined,
          color: Colors.black45,
        ),
      ),
    );
  }

  TextFormField buildNameTextFormField() {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Field cannot be empty";
        }
        return null;
      },
      decoration: const InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        labelStyle: TextStyle(color: Colors.black45),
        labelText: 'Name: ',
        hintText: "enter your full name ",
        prefixIcon: Icon(
          Icons.person_outline_outlined,
          color: Colors.black45,
        ),
      ),
    );
  }
}
