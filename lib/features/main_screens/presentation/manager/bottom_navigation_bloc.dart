import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:spadical/core/texts.dart';
import 'package:spadical/features/main_screens/presentation/pages/calender_page.dart';
import 'package:spadical/features/main_screens/presentation/pages/guide_page.dart';
import 'package:spadical/features/main_screens/presentation/pages/home_page.dart';
import 'package:spadical/features/main_screens/presentation/pages/profile_page.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  List<Widget>screens=[
    HomeScreen(),
    CalenderScreen(),
    ProfileScreen(),
    GuideScreen(),
  ];
  BottomNavigationBloc() : super(HomeState()){
    on<BottomNavigationEvent>((event, emit)async {
      if(event is NavigateToHome){
       emit(HomeState());
      }
      if(event is NavigateToCalender){
        emit(CalenderState());
      }
      if(event is NavigateToProfile){
        emit(ProfileState());
      }
      if(event is NavigateToGuide){
        emit(GuideState());
      }

    });
  }

  onTransition(transition){
    super.onTransition(transition);
    print(transition);



  }


  /*Stream<BottomNavigationState> mapEventToState(
      BottomNavigationEvent event,
      ) async* {
    if(event is NavigateToHome){
      yield HomeState();
    }
    if(event is NavigateToCalender){
      yield CalenderState();
    }
    if(event is NavigateToProfile){
      yield ProfileState();
    }
    if(event is NavigateToGuide){
      yield GuideState();
    }
  }*/
}