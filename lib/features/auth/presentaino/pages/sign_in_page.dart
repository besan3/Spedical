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
import 'package:spadical/features/auth/presentation/widgets/auth_layout.dart';
import 'package:spadical/features/auth/presentation/widgets/auth_widgets.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myBloc = BlocProvider.of<AuthBloc>(context);

    return BlocConsumer<AuthBloc, AuthState>(
      listener: (context, state) {},
      builder: (context, state) {
        return AuthLayout(
          image: AppImages.handIcon,
          title: AppTexts.welcomeBack,
          subTitle: AppTexts.pleaseEnterInfo,
          isSvg: false,
          widget:  Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DefaultTextForm(
                label: AppTexts.email,
                controller: myBloc.emailController,
                textInputType: TextInputType.emailAddress,
              ),
              DefaultSpacer(
                heigth: AppSizes.space16.h,
              ),
              DefaultTextForm(
                label: AppTexts.password,
                controller: myBloc.passController,
                textInputType: TextInputType.visiblePassword,
                suffixIcon: IconButton(
                  onPressed: () {
                    context
                        .read<AuthBloc>()
                        .add(TogglePasswordVisibility());
                  },
                  icon: Icon(
                    state is PasswordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                ),
                isSecure: state is AuthInitial,
              ),
              DefaultSpacer(
                heigth: AppSizes.space12.h,
              ),
              Row(
                children: [
                  Text(
                    AppTexts.forgotPassword,
                    style: AppTextStyles.displaySmall(context)
                        .copyWith(color: AppColors.primaryColor),
                  ),
                  Spacer()
                ],
              ),
              DefaultSpacer(
                heigth: AppSizes.space12.h,
              ),
           DefaultButton(buttonTitle: AppTexts.submit, onPressed: ()=>Navigator.pushNamed(context, '/verification')),
              DefaultSpacer(
                heigth: AppSizes.space18.h,
              ),
              GestureDetector(
                onTap: ()=>Navigator.pushNamed(context,'/signUp'),
                child: RichText(
                  text: TextSpan(
                    text: AppTexts.dontHaveAcc,
                    style: AppTextStyles.displayMedium(context),
                    children: <TextSpan>[
                      const TextSpan(text: ' '),
                      TextSpan(
                          text: AppTexts.signUp,
                          style: AppTextStyles.displayMedium(context)
                              .copyWith(color: AppColors.primaryColor)),
                    ],
                  ),
                ),
              ),
              DefaultSpacer(
                heigth: AppSizes.space39.h,
              ),
              Text(AppTexts.or,
                  style: AppTextStyles.displayMedium(context)),
              DefaultSpacer(
                heigth: AppSizes.space29.h,
              ),

              SizedBox(
                height: AppSizes.height65.h,
                child: ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, int index) {
                    return SocialIcons(socialIcon: AppImages.socialIcons[index], onTap: (){});
                  },  separatorBuilder: (BuildContext context, int index) =>DefaultSpacer(width: AppSizes.space29.w,),
                  itemCount:AppImages.socialIcons.length ,
                ),
              )

            ],
          ),
        ),
        );
      },
    );
  }
}
