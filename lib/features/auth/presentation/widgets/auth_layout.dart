import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spadical/core/colors.dart';
import 'package:spadical/core/images.dart';
import 'package:spadical/core/shadows.dart';
import 'package:spadical/core/sizes.dart';
import 'package:spadical/core/styles.dart';
import 'package:spadical/core/texts.dart';
import 'package:spadical/core/widgets.dart';
import 'package:spadical/features/auth/presentation/manager/auth_bloc.dart';
import 'package:spadical/features/auth/presentation/widgets/auth_widgets.dart';

class AuthLayout extends StatelessWidget {
String image;
bool isSvg;
String title;
String subTitle;
Widget widget;

AuthLayout({required this.image,required this.title,required this.subTitle,required this.widget,required this.isSvg});
  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: AppColors.backgroundColor,
          body: SingleChildScrollView(
            child: SafeArea(
              child: Stack(

                children: [
                  Center(
                    child: Padding(
                      padding:  EdgeInsets.all(AppSizes.space29.h.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(top:AppSizes.space18.h),
                            child:!isSvg? CircleAvatar(
                              backgroundColor: AppColors.whiteColor,
                              radius: 64.r,
                              child:Image.asset(image),
                            ):CircleAvatar(
                              backgroundColor: AppColors.whiteColor,
                              radius: AppSizes.radius64.r,
                              child:SvgPicture.asset(image),
                            ),
                          ),
                          DefaultSpacer(
                            heigth: AppSizes.space29.h,
                          ),
                          Text(title.toUpperCase(),
                              style: AppTextStyles.displayLarge(context)),
                          DefaultSpacer(
                            heigth: AppSizes.space8.h,
                          ),
                          Text(subTitle,
                              style: AppTextStyles.displayMedium(context)),
                          DefaultSpacer(
                            heigth: AppSizes.space39.h,
                          ),
                         widget


                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 4.21.h,
                    left: 278.w,
                    child: Image.asset(
                      AppImages.whiteBackCircle,
                      //  width: 49.w,
                      height:98.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 74.28.h,
                    right: 0.w,

                    child: Image.asset(
                      AppImages.whiteBackCircle1,
                      //  width: 49.w,
                      //height:98.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
