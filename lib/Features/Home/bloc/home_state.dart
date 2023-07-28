part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

class HomeBlocInitial extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeLoadedSuccsessState extends HomeState {}

class HomeErrorState extends HomeState {}

class HomeNavigateToFavActionState extends HomeActionState {}

class HomeNavigateToMusicActionState extends HomeActionState {}

class HomeNavigateToVideoActionState extends HomeActionState {}

class HomeNavigateToStoryActionState extends HomeActionState {}

class HomeNavigateToSelectedSuggestionSelectedActionState
    extends HomeActionState {}

class HomeNavigateToSelectedLastPlayedActionState extends HomeActionState {}

class HomeNavigateToStoryOfTheDayActionState extends HomeActionState {}

class HomeNavigateToLastItemActionState extends HomeActionState {}
