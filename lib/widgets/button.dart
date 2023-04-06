// TODO Implement this library.
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Button b = Button();
    return Container(
      height: 90,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Start your Registration",
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Gotham",
                fontSize: 20,
                fontWeight: FontWeight.w300),
          ),
          IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ))
        ],
      ),
      decoration: BoxDecoration(
          color: Color(0xffF37154),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          )),
    );
  }
}
