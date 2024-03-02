import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';


class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.textHint, this.maxLines = 1});
  final String textHint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: textHint,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(9),
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ),
      );
  }
}