import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:test1/componants/arrow_back.dart';
import 'package:test1/componants/buttons/facebook_btn.dart';
import 'package:test1/componants/buttons/google_btn.dart';
import 'package:test1/componants/buttons/signin_button.dart';
import 'package:test1/componants/buttons/twitter_button.dart';
import 'package:test1/componants/circles/circle.dart';
import 'package:test1/componants/form_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: MediaQuery.of(context).size.width * 2.1,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(180, 0, 156, 237),
              Color.fromARGB(255, 0, 152, 238)
            ],
          )),
          child: Column(
            children: [
              Column(
                children: [
                  const Arrow_back(),
                  Stack(children: const [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 35, top: 20, bottom: 60),
                        child: Text(
                          "Sign in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: 'Varela',
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Circle(),
                      ),
                    )
                  ]),
                ],
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.bottomCenter,
                  width: double.infinity,
                  // height: MediaQuery.of(context).size.width * 3,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding: const EdgeInsets.only(
                                top: 40, left: 30, bottom: 20),
                            child: RichText(
                              text: const TextSpan(
                                text: 'Welcome Back\n',
                                style: TextStyle(
                                    fontSize: 23,
                                    color: Color.fromRGBO(0, 35, 84, 1),
                                    fontFamily: 'Varela'),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: 'Hello there, sign in to continue!',
                                      style: TextStyle(
                                        color: Color.fromRGBO(154, 165, 181, 1),
                                        fontSize: 13,
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Text_Field(
                            text: "Username or email", obscure: false),
                        const Text_Field(text: "Password", obscure: true),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Padding(
                            padding:
                                EdgeInsets.only(top: 20, left: 30, bottom: 20),
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(11, 79, 208, 1),
                                fontFamily: 'Varela',
                              ),
                            ),
                          ),
                        ),
                        const SignInButton(),
                        const Text(
                          "Or",
                          style: TextStyle(
                            fontSize: 15,
                            //fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontFamily: 'Varela',
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              GoogleBtn(),
                              TwitterBtn(),
                              FacebookBtn(),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 8.0),
                                child: RichText(
                                  text: const TextSpan(
                                    text: 'Don\'t have an account?',
                                    style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Color.fromRGBO(154, 165, 181, 1),
                                      fontSize: 13,
                                    ),
                                    children: <TextSpan>[
                                      TextSpan(
                                          text: ' Sign up',
                                          style: TextStyle(
                                            fontFamily: 'Varela',
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(11, 79, 208, 1),
                                            fontSize: 13,
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ]),
                ),
              ),
            ],
          ),
        ));
  }
}
