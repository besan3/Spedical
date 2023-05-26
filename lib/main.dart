import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spadical/core/colors.dart';
import 'package:spadical/core/sizes.dart';
import 'package:spadical/core/texts.dart';
import 'package:spadical/core/themes.dart';
import 'package:spadical/features/auth/presentation/pages/sign_in_page.dart';
import 'package:spadical/features/auth/presentation/pages/sign_up_page.dart';
import 'package:spadical/features/auth/presentation/pages/verification_page.dart';
import 'package:spadical/features/main_screens/presentation/manager/bottom_navigation_bloc.dart';
import 'package:spadical/features/main_screens/presentation/manager/main_bloc.dart';
import 'package:spadical/features/main_screens/presentation/widgets/main_layout.dart';
import 'package:spadical/splash.dart';

import 'features/auth/presentation/manager/auth_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp

  ({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(AppSizes.screenWidth, AppSizes.screenHeight),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => AuthBloc(),
              ),
              BlocProvider(
                create: (context) => BottomNavigationBloc(),
              ),
            ],
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: AppTheme.appTheme,
              title: 'Flutter Demo',
              //home: const SplashScreen(),
              initialRoute: '/',
              routes: {
                '/': (context) => const SplashScreen(),
                '/signIn': (context) => const SignInScreen(),
                '/verification': (context) => const VerificationScreen(),
                '/signUp': (context) => const SignUpScreen(),
                '/main': (context) => MainLayout(),
              },
            ),
          );
        }
    );
  }
}


