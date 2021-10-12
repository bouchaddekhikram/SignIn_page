import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Padding(
          padding: const EdgeInsets.only(left: 30, right: 40, bottom: 20),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(17.0)),
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 98, 211, 199),
                  Color.fromARGB(255, 0, 150, 240)
                ],
              ),
            ),
            child: const Center(
                child: Text(
              "Sign in",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Varela',
              ),
            )),
          ),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder())

            // borderRadius: BorderRadius.circular(18.0),
            // side: BorderSide(color: Colors.red)))
            ));
  }
}
