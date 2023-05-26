
import 'package:flutter_svg/svg.dart';
import 'package:spadical/core/configs.dart';
import 'package:spadical/features/main_screens/domain/entities/drug_entity.dart';
import 'package:spadical/features/main_screens/presentation/widgets/appbar_widget.dart';
import 'package:spadical/features/main_screens/presentation/widgets/doses_card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBarWidget(
        appBarBottom:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(AppTexts.goodMorning,
                                  style: AppTextStyles.titleLarge(context),
                                ),
                                Text(AppTexts.userName,
                                  style: AppTextStyles.titleLarge(context).copyWith(
                                      fontSize: AppSizes.fontSize24.sp
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: AppSizes.height45.w,
                              height: AppSizes.height45.h,
                              decoration: const BoxDecoration(
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
                            )
                          ],
                        ),
                        DefaultSpacer(
                          heigth: AppSizes.space29.h,
                        ),
                        SizedBox(
                          height: 88.h,
                          child: ListView.separated(
                            scrollDirection: Axis.horizontal,
                            itemCount: AppTexts.categories.length,
                            shrinkWrap: true,
                            itemBuilder: (BuildContext context, int index) {
                              return Column(
                                children: [
                                  Container(
                                    width:60.w,
                                    height: 60.h,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.primaryColor,
                                        boxShadow: [
                                          AppShadows.shadow2
                                        ]
                                    ),

                                    child: Center(child: SvgPicture.asset(AppImages.categoriesIcons[index])),


                                  ),
                                  DefaultSpacer(
                                    heigth: AppSizes.space8.h,
                                  ),
                                  Text(AppTexts.categories[index],
                                    style: AppTextStyles.displaySmall(context).copyWith(
                                        color: AppColors.titleFontColor
                                    ),
                                  ),
                                ],
                              );
                            }, separatorBuilder: (BuildContext context, int index)=>DefaultSpacer(width: AppSizes.space24.w,),
                          ),
                        ),
                      ],
                    ),
        bodyBuilder:
        SliverChildListDelegate(
            [
              Padding(
                padding:  EdgeInsets.all(AppSizes.space18.w.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 151.w,
                      height: 23.h,
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(AppSizes.radius15.r)

                      ),
                      child: Center(
                        child: Text('(${AppTexts.noOfDoses})${AppTexts.currentDoses}',
                            style: AppTextStyles.titleLarge(context,fontSize: AppSizes.fontSize14.sp)
                        ),
                      ),
                    ),

                    Text(AppTexts.time,
                      style: AppTextStyles.bodySmall(context),)
                  ],
                ),
              ),
              SizedBox(

                height: 210.h,

                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index) =>DosesCardWidget(drugEntity: DrugEntity(
                        patientName: AppTexts.forMe,
                        drugTime: AppTexts.timeOfTakingDrug,
                        drugName: AppTexts.drugName,
                        drugQuantity: AppTexts.quantity,
                        noOfCapsules: AppTexts.nOfCapsules,
                        reminderTime: AppTexts.time
                    )) ,
                    separatorBuilder: (context,index) =>DefaultSpacer(width:0.w),
                    itemCount:int.parse(AppTexts.noOfDoses)),
              ),

              DefaultSpacer(heigth: AppSizes.space18.h,),
              const Divider(
                color: AppColors.whiteColor,
              ),
              Padding(
                padding:  EdgeInsets.all(AppSizes.space18.w.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 151.w,
                      height: 23.h,
                      decoration: BoxDecoration(
                          color: AppColors.whiteColor,
                          borderRadius: BorderRadius.circular(AppSizes.radius15.r)

                      ),
                      child: Center(
                        child: Text('(${AppTexts.noOfDoses})${AppTexts.upcomingDoses}',
                            style: AppTextStyles.titleLarge(context,fontSize: AppSizes.fontSize14.sp)
                        ),
                      ),
                    ),

                    Text(AppTexts.time,
                      style: AppTextStyles.bodySmall(context),)
                  ],
                ),
              ),
              SizedBox(

                height: 210.h,

                child: ListView.separated(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder:(context,index) =>DosesCardWidget(drugEntity: DrugEntity(
                        patientName: AppTexts.forMe,
                        drugTime: AppTexts.timeOfTakingDrug,
                        drugName: AppTexts.drugName,
                        drugQuantity: AppTexts.quantity,
                        noOfCapsules: AppTexts.nOfCapsules,
                        reminderTime: AppTexts.time
                    )) ,
                    separatorBuilder: (context,index) =>DefaultSpacer(width:0.w),
                    itemCount:int.parse(AppTexts.noOfDoses)),
              ),
              DefaultSpacer(heigth: AppSizes.space18.h,),

              const Divider(
                color: AppColors.whiteColor,
              ),
             // DefaultSpacer(heigth: AppSizes.space18.h,),
              SizedBox(
                width: double.infinity,
                height: 217.78.h,
                child: Stack(
                  alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Center(
                      child: Container(
                        height: 165.14.h,
                        width: 327.14.w,
                        margin: EdgeInsets.symmetric(vertical: AppSizes.space18.h),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppSizes.radius15.r),
                          color: AppColors.primaryColor
                        ),
                        child: Row(

                          children: [
                            const Spacer(),
                            Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width:184.w,
                                  child: Text(AppTexts.goPremiumNow,
                                  style: AppTextStyles.titleMedium(context).copyWith(fontSize: AppSizes.fontSize28.sp),
                                  maxLines: 2,

                                  ),
                                ),
                                SizedBox(
                                  width:162.w,
                                  child: Text(AppTexts.addDes,
                                  style: AppTextStyles.titleMedium(context).copyWith(fontSize: AppSizes.fontSize14.sp),
                                  maxLines: 2,
                                  ),

                                ),
                              ],
                            ),
                          ],
                        ),

                      ),
                    ),
                    Positioned(
                      top: 67.h,
                      child:Image.asset(AppImages.announcment,),
                    ),

                  ],
                ),
              ),
              DefaultSpacer(heigth: AppSizes.space18.h,),
            ]

          ),
        title: AppTexts.home,
        index: 0);
  }
}
