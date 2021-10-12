import 'package:flutter/material.dart';

class GoogleBtn extends StatelessWidget {
  const GoogleBtn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(
              "assets/images/google_logo.png",
            ),
          ),
          width: 110,
          height: 35,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            color: Colors.black,
          ),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder())));
  }
}
