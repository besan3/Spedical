import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spadical/core/colors.dart';
import 'package:spadical/core/sizes.dart';

class AppTextStyles {
  static TextStyle displayLarge(BuildContext context) {
    return Theme.of(context).textTheme.displayLarge!.copyWith(
        fontSize: AppSizes.fontSize24.sp,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w400
    );
  }
  static TextStyle displayMedium(BuildContext context) {
    return Theme.of(context).textTheme.displayMedium!.copyWith(
        fontSize: AppSizes.fontSize16.sp,
        color: AppColors.blackFontColor,
        fontWeight: FontWeight.w400
    );
  }
  static TextStyle displaySmall(BuildContext context) {
    return Theme.of(context).textTheme.displaySmall!.copyWith(
        fontSize: AppSizes.fontSize12.sp,
        color: AppColors.blackFontColor,
        fontWeight: FontWeight.w400
    );
  }
  static TextStyle titleLarge(BuildContext context,
      {double? fontSize = AppSizes.fontSize18}) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(
        fontSize: fontSize,
        color: AppColors.titleFontColor,
        fontWeight: FontWeight.w400,
      fontFamily: 'Inter',

    );
  }
  static TextStyle titleMedium(BuildContext context) {
    return Theme.of(context).textTheme.titleMedium!.copyWith(
        fontSize: AppSizes.fontSize16.sp,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w400
    );
  }
  static TextStyle bodyMedium(BuildContext context) {
    return Theme.of(context).textTheme.bodyMedium!.copyWith(
        fontSize: AppSizes.fontSize16.sp,
        color: AppColors.greyFontColor,
        fontWeight: FontWeight.w400
    );
  }
  static TextStyle bodySmall(BuildContext context) {
    return Theme.of(context).textTheme.bodySmall!.copyWith(
        fontSize: AppSizes.fontSize14.sp,
        color: AppColors.secondaryFontColor,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400
    );
  }
}