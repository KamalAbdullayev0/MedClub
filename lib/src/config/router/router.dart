import 'package:auto_route/auto_route.dart';
import 'package:medclub/src/config/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/', initial: true),
        AutoRoute(page: GetStartedRoute.page, path: '/get-started'),
        AutoRoute(
          page: RegistraterHomeRoute.page,
          path: '/get-started/home',
          children: [
            AutoRoute(page: UserRegistrationRoute.page, path: 'user'),
            AutoRoute(page: DoctorRegistrationRoute.page, path: 'doctor'),
            AutoRoute(page: ClinicRegistrationRoute.page, path: 'clinic'),
          ],
        ),
      ];
}
