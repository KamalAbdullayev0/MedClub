import 'package:flutter/material.dart';
import 'package:medclub/src/core/constants/color.dart';

class OrWidget extends StatelessWidget {
  const OrWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Divider(
            color: AppColors.middleGrey,
            thickness: 1,
            endIndent: 8, // Adds spacing between the divider and the text
          ),
        ),
        Text(
          "Və ya",
          style: TextStyle(
            fontSize: 14,
            color: AppColors.black,
            height: 1.5,
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColors.middleGrey,
            thickness: 1,
            indent: 8, // Adds spacing between the text and the divider
          ),
        ),
      ],
    );
  }
}
