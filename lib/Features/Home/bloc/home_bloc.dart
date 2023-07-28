import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeBlocInitial()) {
    on<HomeFavButtonNavgationEvent>(homeFavButtonNavgationEvent);
    on<HomeVideoButtonNavgationEvent>(homeVideoButtonNavgationEvent);
    on<HomeMusicButtonNavgationEvent>(homeMusicButtonNavgationEvent);
    on<HomeStoryButtonNavgationEvent>(homeStoryButtonNavgationEvent);
    on<HomeStoryoftheDayButtonNavgationEvent>(
        homeStoryoftheDayButtonNavgationEvent);
    on<HomerecentButtonNavgationEvent>(homerecentButtonNavgationEvent);
    on<HomeLastPlayedButtonNavgationEvent>(homeLastPlayedButtonNavgationEvent);
    on<HomeSuggestonButtonNavgationEvent>(homeSuggestonButtonNavgationEvent);
  }

  FutureOr<void> homeFavButtonNavgationEvent(
      HomeFavButtonNavgationEvent event, Emitter<HomeState> emit) {
    print('fav clicked');
    emit(HomeNavigateToFavActionState());
  }

  FutureOr<void> homeVideoButtonNavgationEvent(
      HomeVideoButtonNavgationEvent event, Emitter<HomeState> emit) {
    print('video clicked');
    emit(HomeNavigateToVideoActionState());
  }

  FutureOr<void> homeMusicButtonNavgationEvent(
      HomeMusicButtonNavgationEvent event, Emitter<HomeState> emit) {
    print('music clicked');
    emit(HomeNavigateToMusicActionState());
  }

  FutureOr<void> homeStoryButtonNavgationEvent(
      HomeStoryButtonNavgationEvent event, Emitter<HomeState> emit) {
    print('story clicked');
    emit(HomeNavigateToStoryActionState());
  }

  FutureOr<void> homeStoryoftheDayButtonNavgationEvent(
      HomeStoryoftheDayButtonNavgationEvent event, Emitter<HomeState> emit) {
    print('story of the day clicked');
    emit(HomeNavigateToStoryOfTheDayActionState());
  }

  FutureOr<void> homerecentButtonNavgationEvent(
      HomerecentButtonNavgationEvent event, Emitter<HomeState> emit) {
    print('recently played selected');
    emit(HomeNavigateToLastItemActionState());
  }

  FutureOr<void> homeLastPlayedButtonNavgationEvent(
      HomeLastPlayedButtonNavgationEvent event, Emitter<HomeState> emit) {
    print('last played clicked');
    emit(HomeNavigateToSelectedLastPlayedActionState());
  }

  FutureOr<void> homeSuggestonButtonNavgationEvent(
      HomeSuggestonButtonNavgationEvent event, Emitter<HomeState> emit) {
    print('selected from a suggestion');
    emit(HomeNavigateToSelectedSuggestionSelectedActionState());
  }
}
