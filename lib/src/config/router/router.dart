import 'package:auto_route/auto_route.dart';
import 'package:medclub/src/config/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, path: '/s', initial: true),
        AutoRoute(page: GetStartedRoute.page, path: '/get-started'),
        AutoRoute(
          page: RegistrationHomeRoute.page,
          path: '/get-started/register',
          children: [
            AutoRoute(page: UserRegistrationRoute.page, path: 'user'),
            AutoRoute(page: DoctorRegistrationRoute.page, path: 'doctor'),
            AutoRoute(page: ClinicRegistrationRoute.page, path: 'clinic'),
          ],
        ),
        AutoRoute(
          page: LoginHomeRoute.page,
          path: '/get-started/register',
          children: [
            AutoRoute(page: UserLoginRoute.page, path: 'user'),
            AutoRoute(page: DoctorLoginRoute.page, path: 'doctor'),
            AutoRoute(page: ClinicLoginRoute.page, path: 'clinic'),
          ],
        ),
        AutoRoute(page: HomeRoute.page, path: '/home'),
      ];
}
