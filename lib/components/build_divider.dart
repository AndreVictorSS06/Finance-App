import 'package:flutter/material.dart';

import '../constants.dart';

class BuildDivider extends StatelessWidget {
  const BuildDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
            child: Divider(
          color: kPrimaryColor,
        )),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Text(
            "You can connect with",
            style: TextStyle(color: kPrimaryColor),
          ),
        ),
        Expanded(
            child: Divider(
          color: kPrimaryColor,
        )),
      ],
    );
  }
}
