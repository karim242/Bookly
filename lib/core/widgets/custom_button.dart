import 'package:bookly/core/utils/text_stayles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      required this.text,
      required this.textColor,
      required this.backgroundColor,
      this.borderRadius,
      this.fontSize,
      this.onPressed});

  final String text;
  final Color textColor;
  final Color backgroundColor;
  final double? fontSize;
  final BorderRadius? borderRadius;
   final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(16),
            )),
        child: Text(
          text,
          style: TextStyles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize),
        ),
      ),
    );
  }
}
