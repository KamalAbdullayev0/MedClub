import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:medclub/src/config/router/router.gr.dart';
import 'package:medclub/src/core/constants/color.dart';

@RoutePage()
class LoginHomePage extends StatelessWidget {
  const LoginHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        UserLoginRoute(),
        DoctorLoginRoute(),
        ClinicLoginRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              elevation: 0,
              centerTitle: true,
              title: const Text(
                'Daxil ol',
                style: TextStyle(
                  color: AppColors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(40),
                child: TabBar(
                  onTap: (index) {
                    tabsRouter
                        .setActiveIndex(index); // Sync the active tab index
                  },
                  labelColor: AppColors.primaryBlue,
                  unselectedLabelColor: AppColors.black,
                  dividerColor: Colors.transparent,
                  indicator: const UnderlineTabIndicator(
                    borderSide: BorderSide(
                      color: Colors.blue,
                      width: 1.5,
                    ),
                    insets: EdgeInsets.symmetric(horizontal: 20.0),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  tabs: const [
                    Tab(
                      child: Text(
                        'İstifadəçi',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Həkim',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Klinika/Aptek',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0), // Add padding here
              child: child,
            ),
          ),
        );
      },
    );
  }
}
