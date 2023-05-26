part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationState extends Equatable {
  const BottomNavigationState();

  @override
  List<Object> get props => [];
}

class HomeState extends BottomNavigationState {
  String title=AppTexts.home;
  int index=0;
  @override
  List<Object> get props => [title,index];
}
class CalenderState extends BottomNavigationState {
  String title=AppTexts.calendar;
  int index=1;
  @override
  List<Object> get props => [title,index];
}
class ProfileState extends BottomNavigationState {
  String title=AppTexts.profile;
  int index=2;
  @override
  List<Object> get props => [title,index];
}
class GuideState extends BottomNavigationState {
  String title=AppTexts.guide;
  int index=3;
  @override
  List<Object> get props => [title,index];
}