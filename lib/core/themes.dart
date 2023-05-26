import 'package:spadical/core/configs.dart';

class AppTheme{
  static final ThemeData appTheme=ThemeData(
    useMaterial3: true,
    colorSchemeSeed:AppColors.primaryColor ,
    fontFamily: AppTexts.fontFamily,
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.whiteColor,
      centerTitle: true,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(21.r))
      )
    ),
    brightness: Brightness.light,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      height: AppSizes.height65.h,
      minWidth: double.infinity.w,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.space16.r),
      )
    ),
    colorScheme: ColorScheme.fromSwatch(
        primarySwatch: AppColors.primarySwatchColor
    ).copyWith(background: AppColors.backgroundColor),


  );
}