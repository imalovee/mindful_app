
import 'package:flutter/material.dart';

class SiignupItems extends StatelessWidget {
  const SiignupItems({
    super.key, required this.title,
    required this.label,
    required this.onChanged,
    this.textInputType,
     this.isAPassword = false,
    this.suffixIcon,

  });
  final String title;
  final String label;
  final Function(String newText) onChanged;
  final TextInputType? textInputType;
  final bool isAPassword;
  final Widget? suffixIcon;



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
          style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.black
          ),),
        TextField(
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
              filled: true,
              fillColor: Colors.grey.shade100,
              hintText: label,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey
                  )
              )
          ),

          onChanged: onChanged,
          keyboardType: textInputType,
          obscureText: isAPassword,
        )
      ],
    );
  }
}
