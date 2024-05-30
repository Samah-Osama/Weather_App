import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 15,
      color: Color(0xFF42A5F5),
      // endIndent: 15,
      // indent: 15,
    );
  }
}
