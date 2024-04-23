
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class AvailableTherapistItems extends StatelessWidget {
  const AvailableTherapistItems({
    super.key, required this.text, required this.image,
  });

  final String text;
  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        image,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( text,
              style: TextStyle(
                  color: Color(0xFF667185)
              ),),
           Assets.verify.image()
          ],
        )
      ],
    );
  }
}
