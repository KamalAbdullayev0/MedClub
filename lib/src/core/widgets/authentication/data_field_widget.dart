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

  String _formatInput(String input) {
    input = input.replaceAll(RegExp(r'[^0-9]'), '');
    if (input.length >= 2) {
      input = '${input.substring(0, 2)}/${input.substring(2)}';
    }
    if (input.length > 5) {
      input = '${input.substring(0, 5)}/${input.substring(5)}';
    }
    return input;
  }

  void _onTextChanged(String input) {
    final formattedInput = _formatInput(input);
    _controller.value = TextEditingValue(
      text: formattedInput,
      selection: TextSelection.collapsed(offset: formattedInput.length),
    );

    if (formattedInput.length == 10) {
      try {
        final parts = formattedInput.split('/');
        final day = int.parse(parts[0]);
        final month = int.parse(parts[1]);
        final year = int.parse(parts[2]);
        final date = DateTime(year, month, day);

        if (date.year == year && date.month == month && date.day == day) {
          widget.onDateSelect?.call(date);
        }
      } catch (_) {
        // Ignore invalid dates
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
        LengthLimitingTextInputFormatter(10),
      ],
      decoration: InputStyles.baseInputDecoration(
        hint: widget.hintText,
        suffixIcon: const Icon(Icons.calendar_month_rounded),
      ),
      onChanged: _onTextChanged,
    );
  }
}
