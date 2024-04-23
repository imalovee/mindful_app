
import 'package:flutter/material.dart';

class OTPTextField extends StatelessWidget {
  const OTPTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(8),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
      ),
      child: TextField(
        decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey.shade50,
            hintText: "-",
            hintStyle: TextStyle(fontWeight: FontWeight.bold),
            border: OutlineInputBorder(
                borderSide: BorderSide(
                    color: Colors.grey
                )
            )
        ),
      ),
    );
  }
}