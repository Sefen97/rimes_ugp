part of 'activity_bloc.dart';

@immutable
abstract class ActivityEvent {}

class GetAllActivityEvent extends ActivityEvent {
  final int userId;

  GetAllActivityEvent({required this.userId});
}

class GetAllActivityFilterEvent extends ActivityEvent {
  String? text;

  GetAllActivityFilterEvent({ this.text});
}
