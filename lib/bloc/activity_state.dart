part of 'activity_bloc.dart';

@immutable
abstract class ActivityState {}

class ActivityInitialState extends ActivityState {}

class ActivityLoadingState extends ActivityState {}

class ActivitySuccessState extends ActivityState {
  final List<AllActivityResult> activityResponse;

  ActivitySuccessState({required this.activityResponse});
}

class ActivityErrorState extends ActivityState {
  final String error;

  ActivityErrorState({required this.error});
}
