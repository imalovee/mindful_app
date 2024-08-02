import 'package:flutter/material.dart';

class ProfileItems extends StatelessWidget {
  const ProfileItems({
    super.key, required this.header, required this.hint,
  });

  final String header;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(header),
        Container(
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
          ),
          child: TextField(
            decoration: InputDecoration(
              //label: Text('Name'),
                hintText: hint,
                hintStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                )
            ),
          ),
        ),
      ],
    );
  }
}