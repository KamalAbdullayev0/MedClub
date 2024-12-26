import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medclub/src/config/router/router.gr.dart';
// import 'package:medclub/src/core/constants/image.dart';
// import 'package:medclub/src/core/constants/vector.dart';
import 'package:auto_route/auto_route.dart';
import 'package:medclub/src/core/constants/vector.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirect();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    print('ScreenWidth: $screenWidth, ScreenHeight: $screenHeight');
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppVectors.logo,
          width: screenWidth * 0.55,
          height: screenHeight * 0.24,
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    context.router.push(GetStartedRoute());
  }
}
