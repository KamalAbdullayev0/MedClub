import 'package:flutter/material.dart';
import 'package:medclub/src/core/constants/color.dart';

class InputStyles {
  static InputDecoration baseInputDecoration({
    required String hint,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(
        fontSize: 14,
        color: AppColors.darkGrey,
        fontWeight: FontWeight.w400,
      ),
      suffixIcon: suffixIcon,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          width: 1,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
    );
  }

  static BoxDecoration dropdownBoxDecoration = BoxDecoration(
    border: Border.all(
      color: AppColors.darkGrey,
      width: 1,
    ),
    borderRadius: BorderRadius.circular(12),
  );

  static TextStyle dropdownTextStyle = const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.darkGrey,
  );
}

// class AuthInputStyleTheme {
//   static InputDecorationTheme inputDecorationTheme = InputDecorationTheme(
//     hintStyle: const TextStyle(
//       fontSize: 14,
//       color: AppColors.middleGrey,
//       fontWeight: FontWeight.w400,
//     ),
//     border: OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12),
//       borderSide: const BorderSide(
//         color: AppColors.softGrey,
//         width: 1,
//       ),
//     ),
//     contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 16),
//   );
// }
