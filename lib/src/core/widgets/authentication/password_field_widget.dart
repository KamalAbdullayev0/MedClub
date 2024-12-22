import 'package:flutter/material.dart';
import 'package:medclub/src/config/theme/auth_input_theme.dart';
import 'package:medclub/src/core/constants/color.dart';

class PasswordFieldWidget extends StatefulWidget {
  final String hint;
  final double width;
  final double height;

  const PasswordFieldWidget({
    super.key,
    required this.hint,
    this.width = 360,
    this.height = 50,
  });

  @override
  State<PasswordFieldWidget> createState() => _PasswordFieldWidgetState();
}

class _PasswordFieldWidgetState extends State<PasswordFieldWidget> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      height: widget.height,
      child: TextField(
        obscureText: _obscureText,
        decoration: InputStyles.baseInputDecoration(
          hint: widget.hint,
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            icon: Icon(
              _obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              size: 24,
              color: AppColors.darkGrey,
            ),
          ),
        ),
      ),
    );
  }
}
