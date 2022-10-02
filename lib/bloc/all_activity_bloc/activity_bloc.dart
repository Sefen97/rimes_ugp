import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../api/modle/activity_response/Activity_response.dart';
import '../../api/modle/activity_response/Result.dart';
import '../../backend/api_requests/api_calls.dart';

part 'activity_event.dart';
part 'activity_state.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  List<AllActivityResult> responseList = [];
  List<AllActivityResult> listFilter = [];

  ActivityBloc() : super(ActivityInitialState()) {
    on<GetAllActivityEvent>(_onGetAllActivityEvent);
    on<GetAllActivityFilterEvent>(_onGetAllActivityFilterEvent);
  }

  FutureOr<void> _onGetAllActivityEvent(
      GetAllActivityEvent event, Emitter<ActivityState> emit) async {
    emit(ActivityLoadingState());
    await RimesApiGroup.allActivityRequestCall
        .call(userId: event.userId)
        .then((value) {
      var response = ActivityResponse.fromJson(value.jsonBody);
      if (response.statusCode == 200) {
        responseList = response.allActivityResult!;
        emit(ActivitySuccessState(
            activityResponse: response.allActivityResult!));
      } else {
        emit(ActivityErrorState(error: value.statusCode.toString()));
      }
    });
  }

  FutureOr<void> _onGetAllActivityFilterEvent(
      GetAllActivityFilterEvent event, Emitter<ActivityState> emit) {
    listFilter = responseList;
    event.text = event.text!.trim().toLowerCase();
    listFilter = listFilter
        .where((element) =>
    element.typeName!.toLowerCase().contains(event.text!) ||
        element.typeId.toString().toLowerCase().contains(event.text!) ||
        element.activityStatusName!.toLowerCase().contains(event.text!))
        .toList();
    emit(ActivitySuccessState(activityResponse: listFilter));
  }
}
