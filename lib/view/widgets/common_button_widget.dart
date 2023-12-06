import 'package:flutter/material.dart';
import 'package:scipro_website/view/widgets/google_montserrat_widget.dart';

class CommonButtonWidget extends StatelessWidget {
  CommonButtonWidget(
      {super.key,
      required this.color,
      required this.text,
      required this.textColor,
      required this.onPressFunction});

  Color color;
  String text;
  Color textColor;
  void Function() onPressFunction;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressFunction,
      color: color,
      textColor: textColor,
      child: GoogleMonstserratWidgets(
        text: text,
        fontsize: 15,
        fontWeight: FontWeight.w500,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
    );
  }
}
