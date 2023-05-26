import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spadical/core/colors.dart';
import 'package:spadical/core/images.dart';
import 'package:spadical/core/sizes.dart';
import 'package:spadical/core/texts.dart';
import 'package:spadical/features/auth/presentation/pages/sign_in_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), (){
        Navigator.pushReplacementNamed(context,'/signIn');
    });
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Stack(
 alignment: AlignmentDirectional.topEnd,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppImages.appLogo,
                  color: Colors.white,
                  width: AppSizes.logoWidth.w,
                  height: AppSizes.logoHeight.h,
                ),
                 Text( AppTexts.appName.toUpperCase(),style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily:  AppTexts.fontFamily,
                   color: AppColors.whiteColor,
                   fontSize: 18.sp,
                   letterSpacing: 3.5.w

                ),),
                 Text(AppTexts.forMedicalSolutions.toUpperCase(),style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: AppTexts.fontFamily,
                     color: AppColors.whiteColor,
                     fontSize: 6.sp,
                     letterSpacing: 2.w
                ),),
              ],
            ),
          ),
          Positioned(
            top: 230.26,
           left: 13.w,

            child: SvgPicture.asset(
              AppImages.backCircle1,
              color: Colors.white.withOpacity(0.3),
              width: 33.w,
              height: 65.h,
            ),
          ),
          Positioned(
            top: 300.02,
           left: 46.w,

            child: SvgPicture.asset(
              AppImages.backCircle,
              color: Colors.white.withOpacity(0.3),
              width: 33.w,
              height: 65.h,
            ),
          ),
          Positioned(
            top: 361.26,
            left: 330.w,

            child: SvgPicture.asset(
              AppImages.backCircle1,
              color: Colors.white.withOpacity(0.3),
              width: 33.w,
              height: 65.h,
            ),
          ),
          Positioned(
            top: 57.21,
            left: 310.w,

            child: SvgPicture.asset(
              AppImages.backCircle1,
              color: Colors.white.withOpacity(0.3),
              width: 49.w,
              height:97.h,
            ),
          ),
          Positioned(
            top: 224.02,
            left: 360.w,

            child: SvgPicture.asset(
              AppImages.backCircle,
              color: Colors.white.withOpacity(0.3),
              width: 33.w,
              height: 65.h,
            ),
          ),
          Positioned(
            top: 574.7,
            left: 14.w,

            child: SvgPicture.asset(
              AppImages.backCircle2,

              width: 39.66.w,
              height: 28.44.h,
            ),
          ),
          Positioned(
            top: 553.43,
            left: 71.37.w,

            child: Transform(
    alignment: Alignment.center,
    transform: Matrix4.rotationX(
      -57,
    ),

              child: SvgPicture.asset(
                AppImages.backCircle2,

                width: 39.66.w,
                height: 28.44.h,
              ),
            ),
          ),
          Positioned(
            top: 630.29.h,
            left:294.99.w,

            child: Transform(
    alignment: Alignment.center,
    transform: Matrix4.rotationZ(
      45,
    ),

              child: SvgPicture.asset(
                AppImages.backCircle2,

                width: 33.21.w,
                height:
                23.81.h,
              ),
            ),
          ),
          Positioned(
            top: 655.55.h,
            left: 320.25.w,

            child: Transform(
    alignment: Alignment.center,
    transform: Matrix4.rotationZ(
      -45,
    ),

              child: SvgPicture.asset(
                AppImages.backCircle2,

                width: 33.21.w,
                height:
                23.81.h,
              ),
            ),
          ),


        ],
      ),
    );
  }
}
