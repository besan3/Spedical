import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spadical/core/colors.dart';
import 'package:spadical/core/sizes.dart';

class SocialIcons extends StatelessWidget {
String socialIcon;
void Function()? onTap;
SocialIcons({required this.socialIcon,required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: AppColors.whiteColor,
        radius: AppSizes.radius26.r,
        child: Image.asset(socialIcon),
      ),
    );
  }
}
