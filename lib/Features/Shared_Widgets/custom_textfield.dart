
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key, required this.label,
    required this.onChanged,
    this.textInputType,
    this.isAPassword = false,
    this.suffixIcon,
    required this.textColor,
  });

  final String label;
  final Function(String newText) onChanged;
  final TextInputType? textInputType;
  final bool isAPassword;
  final Widget? suffixIcon;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.all(8),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
            fillColor: Colors.grey.shade300,
            border: OutlineInputBorder(
              //borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none
            ),
            hintText: label,
            suffixIcon: suffixIcon,
            hintStyle: TextStyle(
                color: Colors.black
            )
        ),
        onChanged: onChanged,
        keyboardType: textInputType,
        obscureText: isAPassword,
        style: TextStyle(
          color: textColor
        ),
      ),
    );
  }
}
