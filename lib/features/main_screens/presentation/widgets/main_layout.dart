import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spadical/core/colors.dart';
import 'package:spadical/core/images.dart';
import 'package:spadical/core/shadows.dart';
import 'package:spadical/core/sizes.dart';
import 'package:spadical/core/styles.dart';
import 'package:spadical/core/texts.dart';
import 'package:spadical/core/widgets.dart';
import 'package:spadical/features/main_screens/domain/entities/drug_entity.dart';
import 'package:spadical/features/main_screens/presentation/manager/bottom_navigation_bloc.dart';
import 'package:spadical/features/main_screens/presentation/manager/main_bloc.dart';
import 'package:spadical/features/main_screens/presentation/widgets/doses_card_widget.dart';
import 'package:stylish_bottom_bar/helpers/enums.dart';
import 'package:stylish_bottom_bar/model/bar_items.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../../../../core/enums.dart';

class MainLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mainBloc= BlocProvider.of<BottomNavigationBloc>(context);
    return BlocConsumer<BottomNavigationBloc, BottomNavigationState>(
  listener: (context, state) {
  },
  builder:<BottomNavigationBloc, BottomNavigationState> (context, state) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      bottomNavigationBar:StylishBottomBar(
        onTap: (index){
          if (index == 0) {
            return mainBloc
              .add(NavigateToHome());
          }
          if (index == 1) {
            return mainBloc
              .add(NavigateToCalender());
          }
          if (index == 2) {
            return mainBloc
              .add(NavigateToProfile());
          }
          if (index == 3) {
            return mainBloc
              .add(NavigateToGuide());
          }

          return mainBloc
            .add(NavigateToHome());
        },
        currentIndex: state.index,
        items: List.generate(
                AppImages.screensIcons.length,
                (index) => BottomBarItem(
                 icon: SvgPicture.asset(AppImages.screensIcons[index],
                 color: index==state.index?AppColors.primaryColor:AppColors.titleFontColor,
                 ),
                title: Text(AppTexts.screens[index],
                  style: AppTextStyles.titleLarge(context,fontSize: AppSizes.fontSize12.sp),

                ),
                selectedColor: AppColors.primaryColor,
                  unSelectedColor: AppColors.titleFontColor
             )),
        option:  AnimatedBarOptions(
          iconStyle: IconStyle.Default,
        opacity: 0.3,
            barAnimation: BarAnimation.fade
      ),
        fabLocation: StylishBarFabLocation.center,

        
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0.0,
        onPressed: (){
          Scaffold.of(context).showBottomSheet((context) => BottomSheet(onClosing: (){},
              builder: (context)=>Container(
                child:Text('nnnnnnn')
              )));
        },
        child: const Icon(Icons.add,
        color: AppColors.whiteColor,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body:mainBloc.screens[state.index]


    );
  },
);
  }
}
