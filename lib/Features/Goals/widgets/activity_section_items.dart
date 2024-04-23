
import 'package:flutter/material.dart';

import '../../../gen/assets.gen.dart';

class GoalsSectionItems extends StatelessWidget {
  const GoalsSectionItems({
    super.key, required this.image,
  });

  final Widget image;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      ),
      child: image,
    );
  }
}
