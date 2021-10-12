import 'package:flutter/material.dart';
import 'package:test1/componants/circles/circle.dart';

// ignore: camel_case_types
class Arrow_back extends StatelessWidget {
  const Arrow_back({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: const [
      Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: EdgeInsets.only(right: 90, top: 30),
            child: Circle(),
          )),
      Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: EdgeInsets.only(left: 30, top: 70),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
    ]);
  }
}
