import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:jago/widgets/button.dart';
import 'package:jago/widgets/gradient_layer.dart';
import 'package:jago/widgets/image_layer.dart';

void main() {
  runApp(JaGo());
}

class JaGo extends StatelessWidget {
  const JaGo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(children: [
          bg_image(),
          bg_gradient_layer(),
          Positioned(
              right: 48.57, top: 60, child: Image.asset("images/logo.png")),
          Padding(
            padding: const EdgeInsets.only(top: 250, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset("images/dateicon.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_small(
                          text: 'DATE',
                        ),
                        text_big(
                          text: 'October',
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Image.asset("images/venueicon.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_small(text: 'VENUE'),
                        text_big(text: 'Christ(deemed to be)'),
                        text_big(text: 'University,Banglore')
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Image.asset("images/contact.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        text_small(text: 'CONTACT'),
                        text_big(text: '+91-900-800-7000')
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: Text("Watch out this space for more!",
                      style: TextStyle(
                          color: Color(0xffE89C8A),
                          fontWeight: FontWeight.w300,
                          fontFamily: "Gotham",
                          fontSize: 20)),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Button(),
          )
        ]),
      ),
    );
  }
}

class text_big extends StatelessWidget {
  text_big({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w400,
          fontFamily: "Gotham"),
    );
  }
}

class text_small extends StatelessWidget {
  text_small({required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.left,
      text,
      style: TextStyle(
        color: Color(0xff999999),
        fontSize: 10,
        fontWeight: FontWeight.w300,
        height: .8,
        letterSpacing: 1.2,
      ),
    );
  }
}
