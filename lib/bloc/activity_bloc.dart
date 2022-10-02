import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../api/modle/activity_response/Activity_response.dart';
import '../api/modle/activity_response/Result.dart';
import '../backend/api_requests/api_calls.dart';

part 'activity_event.dart';

part 'activity_state.dart';

class ActivityBloc extends Bloc<ActivityEvent, ActivityState> {
  List<AllActivityResult> responseList = [];
  List<AllActivityResult> listFilter = [];

  ActivityBloc() : super(ActivityInitialState()) {
    on<GetAllActivityEvent>(_onGetAllActivityEvent);
  }

  FutureOr<void> _onGetAllActivityEvent(
      GetAllActivityEvent event, Emitter<ActivityState> emit) async {
    emit(ActivityLoadingState());
    await RimesApiGroup.allActivityRequestCall.call(userId: 10).then((value) {
      var response = ActivityResponse.fromJson(value.jsonBody);
      if (response.statusCode==200) {
        emit(ActivitySuccessState(
            activityResponse: response.allActivityResult!));
      } else {
        emit(ActivityErrorState(error: value.statusCode.toString()));
      }
    });
  }
}
