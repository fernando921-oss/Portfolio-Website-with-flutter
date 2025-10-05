import 'package:flutter/material.dart';
import 'package:video01_portfolio_website/styles/app_colors.dart';

class AppTheme{

  static ThemeData get dark=>ThemeData(
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryColor,
      background:AppColors.darkBackgroundColor,
      onBackground: AppColors.gray

    ),

    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    appBarTheme: AppBarTheme(color:AppColors.gray),


  );






}