import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medclub/src/config/router/router.gr.dart';
import 'package:medclub/src/core/constants/color.dart';
import 'package:medclub/src/core/constants/vector.dart';
import 'package:medclub/src/core/widgets/custom_button.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFF8FBFF),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(AppVectors.logo3,
                    width: screenWidth * 0.5, height: screenWidth * 0.5),
                SizedBox(height: screenHeight * 0.02),
                const Text(
                  "Salam! Klinikalar və həkimlər haqqında məlumat əldə edin, "
                  "analiz nəticələrini idarə edin və reseptləri asanlıqla saxlayın. "
                  "Tətbiqimizin əsas xüsusiyyətlərini araşdırmağa başlayın.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black87,
                    height: 1.5,
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                CustomButton(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.7,
                  text: "Qeydiyyatdan keç",
                  onPressed: () {
                    context.router.push(RegistraterHomeRoute());
                  },
                ),
                SizedBox(height: screenHeight * 0.015),
                CustomButton(
                  height: screenHeight * 0.06,
                  width: screenWidth * 0.7,
                  text: "Daxil ol",
                  onPressed: () {
                    print("Daxil ol pressed");
                  },
                  backgroundColor: AppColors.lightBlue,
                  textColor: AppColors.primaryBlue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
