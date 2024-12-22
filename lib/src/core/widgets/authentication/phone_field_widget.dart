import 'package:flutter/material.dart';
import 'package:medclub/src/config/theme/auth_input_theme.dart';

class PhoneInputWidget extends StatefulWidget {
  final List<String> countryCodes;
  final String initialCountryCode;
  final ValueChanged<String>? onCountryCodeChanged;
  final ValueChanged<String>? onPhoneNumberChanged;
  final double width;
  final double height;

  const PhoneInputWidget({
    Key? key,
    required this.countryCodes,
    this.initialCountryCode = '+994',
    this.onCountryCodeChanged,
    this.onPhoneNumberChanged,
    this.width = 360,
    this.height = 49,
  }) : super(key: key);

  @override
  _PhoneInputWidgetState createState() => _PhoneInputWidgetState();
}

class _PhoneInputWidgetState extends State<PhoneInputWidget> {
  late String selectedCountryCode;

  @override
  void initState() {
    super.initState();
    selectedCountryCode = widget.initialCountryCode;
  }

  void _onCountryCodeChanged(String newCode) {
    setState(() {
      selectedCountryCode = newCode;
    });
    widget.onCountryCodeChanged?.call(newCode);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 3),
      decoration: InputStyles.dropdownBoxDecoration,
      child: Row(
        children: [
          DropdownButton<String>(
            value: selectedCountryCode,
            items: widget.countryCodes.map((code) {
              return DropdownMenuItem(
                value: code,
                child: Text(
                  code,
                  style: InputStyles.dropdownTextStyle,
                ),
              );
            }).toList(),
            onChanged: (value) {
              if (value != null) _onCountryCodeChanged(value);
            },
            underline: const SizedBox(),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: InputBorder.none,
              ),
              onChanged: widget.onPhoneNumberChanged,
            ),
          ),
        ],
      ),
    );
  }
}
