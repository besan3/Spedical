import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spadical/core/colors.dart';
import 'package:spadical/core/shadows.dart';
import 'package:spadical/core/sizes.dart';
import 'package:spadical/core/styles.dart';
import 'package:spadical/core/texts.dart';
import 'package:spadical/core/widgets.dart';
import 'package:spadical/features/main_screens/domain/entities/drug_entity.dart';

import '../../../../core/images.dart';

class DosesCardWidget extends StatelessWidget {
 DrugEntity drugEntity;
 DosesCardWidget({required this.drugEntity});

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 256.w,
     height: 168.h,
     margin: EdgeInsets.only(left:AppSizes.space18.w ),
      child: Stack(
       // alignment: AlignmentDirectional.topStart,
       children: [
        Padding(
         padding: EdgeInsets.only(top:AppSizes.space12.h,),
         child: Card(
          color: AppColors.whiteColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(AppSizes.radius15.r)
          ),
          child: Padding(
           padding: EdgeInsets.all(AppSizes.space18.h.w),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             DefaultSpacer(heigth: AppSizes.space16.h,),
             Text(drugEntity.patientName,
              style: AppTextStyles.displaySmall(context),
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

               Text(drugEntity.drugTime,
                style: AppTextStyles.bodySmall(context),
               ),
               SvgPicture.asset(AppImages.listIcon)

              ],
             ),
             DefaultSpacer(heigth: AppSizes.space16.h,),

             Text(drugEntity.drugName,
              style: AppTextStyles.titleLarge(context),
             ),
             Text(drugEntity.drugQuantity +" "+"|" +" "+drugEntity.noOfCapsules,
              style: AppTextStyles.bodySmall(context),
             ),


             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

               Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                 Padding(
                  padding: EdgeInsets.symmetric(vertical:AppSizes.space12.h),
                  child: Container(
                   width: AppSizes.height65.w,
                   height: AppSizes.radius26.h,
                   decoration:BoxDecoration(
                       color: AppColors.secondaryFontColor.withOpacity(0.1),
                       borderRadius: BorderRadius.circular(AppSizes.radius15.r)
                   ),

                   child: Center(
                    child: Text(drugEntity.reminderTime,
                     style: AppTextStyles.displaySmall(context),

                    ),
                   ),



                  ),
                 ),
                 Positioned(
                     top: 30.h,

                     child: SvgPicture.asset(AppImages.notifiyIcon)
                 ),
                ],
               ),
               Container(
                height: AppSizes.radius26.h,
                child: DefaultButton(
                 onPressed: (){},
                 buttonTitle: AppTexts.done,
                 width: AppSizes.height65.w,
                ),
               )
              ],
             ),
            ],
           ),
          ),
         ),
        ),
        Positioned(
         top: 0,
         left: 30.w,
         child: Container(
          width: AppSizes.height45.w,
          height: AppSizes.height45.h,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              shape: BoxShape.circle,
              boxShadow: [
               AppShadows.shadow3,
              ]
          ),
          child: Center(
           child: CircleAvatar(
            radius: 18,

            child: Image.asset(AppImages.personIcon,
             fit: BoxFit.cover,
            ),
            // child: Image.asset(AppImages.personIcon),
           ),
          ),
         ),
        ),
        Positioned(
            bottom: 56,
            left: 3.5,
            top:70,
            child:Container(
             color: AppColors.primaryColor,
             width: 2.w,
             height: AppSizes.height45.h,

            ))
       ],
      ),
    );
  }
}
