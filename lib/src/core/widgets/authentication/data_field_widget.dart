import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:medclub/src/config/theme/auth_input_theme.dart';

class DateFieldWidget extends StatefulWidget {
  final Function(DateTime)? onDateSelect;
  final String hintText;

  const DateFieldWidget({
    Key? key,
    this.onDateSelect,
    this.hintText = 'Doğum tarixnizi daxil edin',
  }) : super(key: key);

  @override
  State<DateFieldWidget> createState() => _DateFieldWidgetState();
}

class _DateFieldWidgetState extends State<DateFieldWidget> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// Formats the input string into a date format: "DD/MM/YYYY".
  String _formatInput(String input) {
    final digitsOnly = input.replaceAll(RegExp(r'[^0-9]'), '');

    // Limit to 8 characters (DDMMYYYY)
    final limitedInput =
        digitsOnly.length > 8 ? digitsOnly.substring(0, 8) : digitsOnly;

    if (limitedInput.length <= 2) {
      return limitedInput; // Day part only
    } else if (limitedInput.length <= 4) {
      return '${limitedInput.substring(0, 2)}-${limitedInput.substring(2)}'; // Day and month
    } else {
      return '${limitedInput.substring(0, 2)}-${limitedInput.substring(2, 4)}-${limitedInput.substring(4)}'; // Full date
    }
  }

  /// Validates and processes the input when changed.
  void _onTextChanged(String input) {
    final formattedInput = _formatInput(input);

    // Update the controller text with the formatted value
    _controller.value = TextEditingValue(
      text: formattedInput,
      selection: TextSelection.collapsed(offset: formattedInput.length),
    );

    // Check if the formatted input is a complete date
    if (formattedInput.length == 10) {
      final parts = formattedInput.split('/');
      if (parts.length == 3) {
        try {
          final day = int.parse(parts[0]);
          final month = int.parse(parts[1]);
          final year = int.parse(parts[2]);

          // Validate the date components
          final date = DateTime(year, month, day);
          if (date.year == year && date.month == month && date.day == day) {
            widget.onDateSelect?.call(date);
          }
        } catch (_) {
          // Invalid date, do nothing
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10), // Max length for "DD/MM/YYYY"
      ],
      decoration: InputStyles.baseInputDecoration(
        hint: widget.hintText,
        suffixIcon: const Icon(Icons.calendar_month_rounded),
      ),
      onChanged: _onTextChanged,
    );
  }
}
