part of 'bottom_navigation_bloc.dart';

abstract class BottomNavigationEvent extends Equatable {
  const BottomNavigationEvent();

  @override
  List<Object> get props => [];
}

class NavigateToHome extends BottomNavigationEvent {
  @override
  List<Object> get props => [];
}
class NavigateToCalender extends BottomNavigationEvent {
  @override
  List<Object> get props => [];
}
class NavigateToProfile extends BottomNavigationEvent {
  @override
  List<Object> get props => [];
}
class NavigateToGuide extends BottomNavigationEvent {
  @override
  List<Object> get props => [];
}