import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:medclub/src/config/router/router.gr.dart';
// import 'package:medclub/src/core/constants/image.dart';
// import 'package:medclub/src/core/constants/vector.dart';
import 'package:auto_route/auto_route.dart';

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
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/vectors/spotify_logo.svg',
          width: 210,
          height: 180,
        ),
      ),
    );
  }

  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 0));
    context.router.push(GetStartedRoute());
  }
}
