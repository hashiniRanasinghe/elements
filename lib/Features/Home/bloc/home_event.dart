part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeFavButtonNavgationEvent extends HomeEvent {}

class HomeVideoButtonNavgationEvent extends HomeEvent {}

class HomeMusicButtonNavgationEvent extends HomeEvent {}

class HomeStoryButtonNavgationEvent extends HomeEvent {}

class HomeStoryoftheDayButtonNavgationEvent extends HomeEvent {}

class HomeSuggestonButtonNavgationEvent extends HomeEvent {}

class HomerecentButtonNavgationEvent extends HomeEvent {}

class HomeLastPlayedButtonNavgationEvent extends HomeEvent {}
