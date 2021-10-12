import 'package:flutter/material.dart';

// ignore: camel_case_types
class Text_Field extends StatefulWidget {
  const Text_Field({Key? key, required text, required obscure})
      : _text = text,
        _obscure = obscure,
        super(key: key);

  // ignore: prefer_typing_uninitialized_variables
  final String _text;
  // ignore: prefer_typing_uninitialized_variables
  final bool _obscure;

  @override
  _Text_FieldState createState() => _Text_FieldState();
}

// ignore: camel_case_types
class _Text_FieldState extends State<Text_Field> {
  late String text;
  late bool obscure;

  @override
  void initState() {
    text = widget._text;
    obscure = widget._obscure;

    super.initState();
  }

  final myController = TextEditingController();
  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int textLength = 0;

    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 20),
            child: Text(
              text,
              style: const TextStyle(color: Colors.black26),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10, left: 30, right: 40),
          child: SizedBox(
            height: 50,
            child: TextFormField(
              onChanged: (value) {
                myController.addListener(() {
                  setState(() {
                    textLength = myController.text.length;
                    //  print(textLength);
                  });
                });
              },
              controller: myController,
              textAlignVertical: TextAlignVertical.center,
              textAlign: TextAlign.left,
              style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  height: 0.9,
                  color: Color.fromRGBO(0, 35, 84, 1)),
              obscureText: obscure,
              obscuringCharacter: "*",
              decoration: InputDecoration(
                suffixIcon: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 12.0),
                  child: GestureDetector(
                    child: myController.text.length > 6
                        ? const Icon(
                            Icons.check_circle,
                            color: Color.fromRGBO(0, 182, 249, 1),
                          )
                        : const Icon(
                            Icons.cancel_outlined,
                            color: Colors.white,
                          ),
                  ),
                ),
                filled: true,
                fillColor: const Color.fromRGBO(246, 247, 250, 1),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(17.0),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
