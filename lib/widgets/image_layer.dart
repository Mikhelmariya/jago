import 'package:flutter/material.dart';

class bg_image extends StatelessWidget {
  const bg_image({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.transparent,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'images/bg.png',
            ),
          )),
    );
  }
}
