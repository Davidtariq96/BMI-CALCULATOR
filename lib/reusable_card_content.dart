import 'package:flutter/material.dart';

const iconSize = 50.0;

class ReusableCardContent extends StatelessWidget {
  final String gender;
  final IconData fonts;
  const ReusableCardContent(
      {Key? key, required this.gender, required this.fonts})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 15,
          child: Icon(
            fonts,
            size: iconSize,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          flex: 7,
          child: Text(
            gender,
            style: const TextStyle(
              fontSize: 18.0,
              color: Color(0XFF8D8E98),
            ),
          ),
        )
      ],
    );
  }
}
