import 'package:flutter/material.dart';

class CustomTextWidget01 extends StatelessWidget {
  String textValue;
  Color fontColors;
  FontWeight fontWeight;
  double fontSize;
  CustomTextWidget01(
      {super.key,
      required this.textValue,
      this.fontColors = Colors.black,
      this.fontWeight = FontWeight.w400,
      this.fontSize = 15});

  @override
  Widget build(BuildContext context) {
    return Text(
      textValue,
      style: TextStyle(fontWeight: fontWeight, color: fontColors,
      fontSize: fontSize),
    );
  }
}



Widget featureText({
  required String firstValue,
  required String secondValue
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(flex: 1, child: Text(firstValue)),
      Expanded(
        flex: 3,
        child: CustomTextWidget01(
            textValue: ":  $secondValue", fontWeight: FontWeight.bold, fontSize: 14),
      ),
    ],
  );
}


Widget featureText02({
  required String firstValue,
  required String secondValue
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(flex: 0, child: Text(firstValue)),
      Expanded(
        flex: 1,
        child: CustomTextWidget01(
            textValue: ":  $secondValue", fontWeight: FontWeight.bold, fontSize: 14),
      ),
    ],
  );
}
