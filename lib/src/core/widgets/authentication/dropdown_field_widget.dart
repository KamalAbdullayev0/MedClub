import 'package:flutter/material.dart';
import 'package:medclub/src/config/theme/auth_input_theme.dart';

class UserChoiceDropdown extends StatelessWidget {
  final double width;
  final double height;
  final String hint;
  final List<DropdownMenuItem<String>> items;
  final VoidCallback onChanged;

  const UserChoiceDropdown({
    super.key,
    this.width = 360,
    this.height = 49,
    required this.hint,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: DropdownButtonFormField<String>(
        decoration: InputStyles.baseInputDecoration(hint: hint),
        items: items,
        onChanged: (value) {
          onChanged();
        },
      ),
    );
  }
}
