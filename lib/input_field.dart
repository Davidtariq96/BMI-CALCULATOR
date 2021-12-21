import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable_card.dart';
import 'reusable_card_content.dart';

const bottomHeight = 80.0;
const activeBoxColors = Color(0xFF1D1E33);
const inActiveBoxColors = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);
  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  Gender? selectGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
      ),
      body: Column(children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colours: selectGender == Gender.male
                      ? activeBoxColors
                      : inActiveBoxColors,
                  cardItem: const ReusableCardContent(
                    gender: "MALE",
                    fonts: FontAwesomeIcons.mars,
                  ),
                  onPress: () {
                    setState(() {
                      selectGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                  child: ReusableCard(
                colours: selectGender == Gender.female
                    ? activeBoxColors
                    : inActiveBoxColors,
                cardItem: const ReusableCardContent(
                  gender: "FEMALE",
                  fonts: FontAwesomeIcons.venus,
                ),
                onPress: () {
                  setState(() {
                    selectGender = Gender.female;
                  });
                },
              )),
            ],
          ),
        ),
        const Expanded(
            child: ReusableCard(
          colours: activeBoxColors,
        )),
        Expanded(
          child: Row(
            children: const <Widget>[
              Expanded(
                  child: ReusableCard(
                colours: activeBoxColors,
              )),
              Expanded(
                  child: ReusableCard(
                colours: activeBoxColors,
              )),
            ],
          ),
        ),
        Container(
          color: bottomContainerColor,
          margin: const EdgeInsets.only(top: 10.0),
          height: bottomHeight,
          width: double.infinity,
        )
      ]),
    );
  }
}

//The key is use to know the state of your widget on the widget tree as they are moving around
// void genderColorChange({required Gender selectGender}) {
//   // selectGender == Gender.male && maleColor == inActiveBoxColors ? maleColor == activeBoxColors && femaleColor == inActiveBoxColors : maleColor = inActiveBoxColors
//   if (selectGender == Gender.male) {
//     if (maleColor == inActiveBoxColors) {
//       maleColor = activeBoxColors;
//       femaleColor = inActiveBoxColors;
//     } else {
//       maleColor = inActiveBoxColors;
//     }
//   } else {
//     if (femaleColor == inActiveBoxColors) {
//       femaleColor = activeBoxColors;
//       maleColor = inActiveBoxColors;
//     } else {
//       femaleColor = inActiveBoxColors;
//     }
//   }
// }
