// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:medclub/src/feature/authentication/presentation/pages/getstarted_page.dart'
    as _i3;
import 'package:medclub/src/feature/authentication/presentation/pages/register_home_page.dart'
    as _i4;
import 'package:medclub/src/feature/authentication/presentation/pages/register_widget/clinic_register.dart'
    as _i1;
import 'package:medclub/src/feature/authentication/presentation/pages/register_widget/doctor_register_page.dart'
    as _i2;
import 'package:medclub/src/feature/authentication/presentation/pages/register_widget/user_register_page.dart'
    as _i6;
import 'package:medclub/src/feature/authentication/presentation/pages/spalsh_page.dart'
    as _i5;

/// generated route for
/// [_i1.ClinicRegistrationScreen]
class ClinicRegistrationRoute extends _i7.PageRouteInfo<void> {
  const ClinicRegistrationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          ClinicRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'ClinicRegistrationRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i1.ClinicRegistrationScreen();
    },
  );
}

/// generated route for
/// [_i2.DoctorRegistrationScreen]
class DoctorRegistrationRoute extends _i7.PageRouteInfo<void> {
  const DoctorRegistrationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          DoctorRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'DoctorRegistrationRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i2.DoctorRegistrationScreen();
    },
  );
}

/// generated route for
/// [_i3.GetStartedPage]
class GetStartedRoute extends _i7.PageRouteInfo<void> {
  const GetStartedRoute({List<_i7.PageRouteInfo>? children})
      : super(
          GetStartedRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetStartedRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i3.GetStartedPage();
    },
  );
}

/// generated route for
/// [_i4.RegistraterHomePage]
class RegistraterHomeRoute extends _i7.PageRouteInfo<void> {
  const RegistraterHomeRoute({List<_i7.PageRouteInfo>? children})
      : super(
          RegistraterHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistraterHomeRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i4.RegistrationHomePage();
    },
  );
}

/// generated route for
/// [_i5.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute({List<_i7.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashPage();
    },
  );
}

/// generated route for
/// [_i6.UserRegistrationScreen]
class UserRegistrationRoute extends _i7.PageRouteInfo<void> {
  const UserRegistrationRoute({List<_i7.PageRouteInfo>? children})
      : super(
          UserRegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'UserRegistrationRoute';

  static _i7.PageInfo page = _i7.PageInfo(
    name,
    builder: (data) {
      return const _i6.UserRegistrationScreen();
    },
  );
}
