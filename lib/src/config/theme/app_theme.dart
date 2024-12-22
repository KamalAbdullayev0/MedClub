import 'package:flutter/material.dart';
import 'package:medclub/src/core/constants/color.dart';
// import 'package:shoomla_app/core/config/theme/appTheme/tab_bar_theme.dart';
// import 'package:shoomla_app/core/config/theme/appTheme/text_button_theme.dart';
// import 'package:shoomla_app/core/config/theme/appTheme/text_theme.dart';
// import '../../../constants/color.dart';
// import 'elevated_button_theme.dart';
// import 'input_decoration_theme.dart';
// import 'outlined_button_theme.dart';

class AppTheme {
  static final ThemeData customTheme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.background,

    // scaffoldBackgroundColor: AppColors.backgroundScaffold,
    // appBarTheme: const AppBarTheme(
    //   color: AppColors.backgroundAppBar,
    //   elevation: 0,
    // ),
    // brightness: Brightness.light,
    // textButtonTheme: ShoomlaTextButtonTheme.textButtonThemeData,
    // tabBarTheme: ShoomlaTabBarTheme.tabBarTheme,
    // inputDecorationTheme: ShoomlaInputDecorationTheme.inputDecorationTheme,
    // elevatedButtonTheme: ShoomlaElevatedButtonTheme.elevatedButtonThemeData,
    // outlinedButtonTheme: ShoomlaOutlinedButtonTheme.outlinedButtonThemeData,
    // textTheme: ShoomlaTextTheme.textTheme,
    // dividerTheme: DividerThemeData(color: AppColors.borderColor, thickness: 1,),
  );
}
