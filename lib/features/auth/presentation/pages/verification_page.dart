import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import 'package:spadical/core/colors.dart';
import 'package:spadical/core/images.dart';
import 'package:spadical/core/sizes.dart';
import 'package:spadical/core/styles.dart';
import 'package:spadical/core/texts.dart';
import 'package:spadical/core/widgets.dart';
import 'package:spadical/features/auth/presentation/widgets/auth_layout.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 40.w,
      height: 40.h,

      textStyle: const TextStyle(
        fontSize: 22,
        color: AppColors.primaryColor,
      ),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(AppSizes.radius8.r),
        border: Border.all(color: AppColors.whiteColor),
      ),
    );
    return AuthLayout(
        image: AppImages.appLogo,
        title: AppTexts.verification,
        subTitle: AppTexts.enterCode,
        isSvg: true,
        widget: Column(
          children: [
            Text(
              AppTexts.editNumber,
              style: AppTextStyles.displayMedium(context).copyWith(
                color: AppColors.primaryColor
              ),
            ),
            DefaultSpacer(
              heigth: AppSizes.space24.h,
            ),
            Pinput(
            cursor: Padding(
              padding:  EdgeInsets.all(AppSizes.space12.h.w),
              child: Divider(
                thickness: 1.5,
                color: AppColors.greyFontColor,
              ),
            ),
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primaryColor),
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(AppSizes.radius8.r),

                )
              ),

            ),
            DefaultSpacer(
              heigth: AppSizes.space24.h,
            ),



            DefaultButton(buttonTitle: AppTexts.submit, onPressed: ()=>Navigator.pushNamed(context, '/verification')),
            DefaultSpacer(
              heigth: AppSizes.space39.h,
            ),
            Text(
              AppTexts.notReceive,
              style: AppTextStyles.displayMedium(context),
            ),
            DefaultSpacer(
              heigth: AppSizes.space8.h,
            ),
            Text(
              AppTexts.requestNewCode,
              style: AppTextStyles.bodyMedium(context),
            ),
          ],
        ));
  }
}
