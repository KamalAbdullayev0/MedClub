import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:medclub/src/config/router/router.gr.dart';
import 'package:medclub/src/core/widgets/authentication/label_widget.dart';
import 'package:medclub/src/core/widgets/authentication/password_field_widget.dart';
import 'package:medclub/src/core/widgets/authentication/phone_field_widget.dart';
import 'package:medclub/src/core/widgets/authentication/text_field.dart';
import 'package:medclub/src/core/widgets/custom_button.dart';

@RoutePage()
class ClinicRegistrationScreen extends StatelessWidget {
  const ClinicRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 12),
            const LabelWidget(label: 'Klinika və ya Aptekin adı'),
            CustomTextField(
                hint: 'Klinika və ya Aptekin adı daxil edin',
                height: screenHeight * 0.06,
                width: screenWidth),
            const SizedBox(height: 10),
            const LabelWidget(label: 'Şifrə'),
            PasswordFieldWidget(
                hint: 'Parolu daxil edin',
                height: screenHeight * 0.06,
                width: screenWidth),
            const SizedBox(height: 10),
            const LabelWidget(label: 'Email'),
            CustomTextField(
                hint: 'Email adresinizi daxil edin',
                height: screenHeight * 0.06,
                width: screenWidth),
            const SizedBox(height: 10),
            const LabelWidget(label: 'Telefon nömrəsi'),
            PhoneInputWidget(
                countryCodes: const ['+994', '+7', '+90', '+1'],
                initialCountryCode: '+994',
                height: screenHeight * 0.06,
                width: screenWidth),
            const SizedBox(height: 10),
            CustomButton(
              height: screenHeight * 0.06,
              width: screenWidth,
              text: "Qeydiyyatdan keç",
              onPressed: () {
                context.router.push(const HomeRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
