import 'package:flutter/material.dart';
import 'package:medclub/src/config/theme/auth_input_theme.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final double width;
  final double height;

  const CustomTextField({
    super.key,
    required this.hint,
    this.width = 360,
    this.height = 49,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        decoration: InputStyles.baseInputDecoration(hint: hint),
      ),
    );
  }
}
