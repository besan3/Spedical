import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spadical/features/main_screens/presentation/manager/bottom_navigation_bloc.dart';
import 'package:spadical/features/main_screens/presentation/widgets/exports.dart';

class AppBarWidget extends StatelessWidget {
  Widget appBarBottom;
  SliverChildListDelegate bodyBuilder;
  String title;
  int index=0;
  AppBarWidget({required this.appBarBottom,required this.bodyBuilder,required this.title,required this.index,});


  @override
  Widget build(BuildContext context) {

    return CustomScrollView(
      slivers: [
        SliverAppBar(
            floating: true,
            pinned: true,
            snap: false,
            title: Text(title),
            titleTextStyle:AppTextStyles.titleLarge(context) ,
            leading:  Padding(
              padding:  EdgeInsets.only(left: AppSizes.space18.w),
              child: SvgPicture.asset(AppImages.menuIcon,
                color: AppColors.titleFontColor,
                width: 3.w,
                height: 23.h,
              ),
            ),
            leadingWidth: 42.w,
            actions: [
              Padding(
                padding:  EdgeInsets.only(right: 20.0.w),
                child: GestureDetector(

                  child: index==3?const Icon(Icons.add_location_outlined,color: AppColors.titleFontColor,
                    size: 24,
                  ):SvgPicture.asset(AppImages.notificationIcon,
                    width: 20.69.w,
                    height: 23.h,
                  ),
                ),
              )
            ],
            backgroundColor: AppColors.whiteColor,
            expandedHeight: 300.h,
            toolbarHeight: 100.h,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding:  EdgeInsets.only(top: 120.h),
                child: PreferredSize(
                  preferredSize: Size.fromHeight(220.h),
                  child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal:  AppSizes.space18.w),
                      child:appBarBottom


                  ),
                ),
              ),
            )

        ),
        SliverList(
            delegate:bodyBuilder
        )
      ],

    );
  }

  }

