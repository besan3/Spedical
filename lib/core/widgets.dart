import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spadical/core/colors.dart';
import 'package:spadical/core/shadows.dart';
import 'package:spadical/core/sizes.dart';
import 'package:spadical/core/styles.dart';
import 'package:spadical/core/texts.dart';

class DefaultSpacer extends StatelessWidget {
  double? heigth=AppSizes.space8;
  double ?width=AppSizes.space8;
  DefaultSpacer({this.width,this.heigth});



  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: heigth,
      width: width,

    );
  }
}

class DefaultTextForm extends StatelessWidget {
  TextEditingController controller;
  TextInputType textInputType;
  String label;
  Widget? suffixIcon;
  bool? isSecure;

  DefaultTextForm({
    required this.controller,
    required this.textInputType,
    required this.label,
    this.suffixIcon,
    this.isSecure,

});


  @override
  Widget build(BuildContext context) {
    return   Container(
      height: AppSizes.height65.h,
      decoration:  BoxDecoration(
          color:AppColors.whiteColor,
          borderRadius:BorderRadius.circular(AppSizes.radius8.r),
          border:Border.all(
            color: AppColors.whiteColor,

          ) ,
          boxShadow:const [
            AppShadows.shadow1
          ]
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,obscureText: isSecure??false,
        decoration:   InputDecoration(
          suffixIcon:suffixIcon ,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            filled: true,
            fillColor: AppColors.whiteColor,
            label: Text(label,
              style: AppTextStyles.displaySmall(context),)
        ),

      ),
    );
  }
}

class DefaultButton extends StatelessWidget {
  void Function()? onPressed;
  String buttonTitle;
  double? width;
  DefaultButton({required this.buttonTitle,required this.onPressed,this.width});

  @override
  Widget build(BuildContext context) {
    return    MaterialButton(
      onPressed: onPressed,
      shape: Theme.of(context).buttonTheme.shape,
      color: AppColors.primaryColor,
      minWidth: width,
      child: Text(
       buttonTitle.toUpperCase(),
        style: AppTextStyles.titleMedium(context),
      ),
    );
  }
}


