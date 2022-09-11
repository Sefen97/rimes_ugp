import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start RimesApi Group Code

class RimesApiGroup {
  static String baseUrl = 'http://45.35.169.130:8765/CRMRealEstateNew_Test/';
  static Map<String, String> headers = {};
  static LoginRequestCall loginRequestCall = LoginRequestCall();
  static AdmainDashboardRequestCall admainDashboardRequestCall =
      AdmainDashboardRequestCall();
  static AllActivityRequestCall allActivityRequestCall =
      AllActivityRequestCall();
}

class LoginRequestCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LoginRequest',
      apiUrl: '${RimesApiGroup.baseUrl}/api/authorize',
      callType: ApiCallType.POST,
      headers: {
        ...RimesApiGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class AdmainDashboardRequestCall {
  Future<ApiCallResponse> call({
    int? userId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AdmainDashboardRequest',
      apiUrl: '${RimesApiGroup.baseUrl}api/dashboard/admin?',
      callType: ApiCallType.GET,
      headers: {
        ...RimesApiGroup.headers,
      },
      params: {
        'userId': userId,
      },
      returnBody: true,
    );
  }
}

class AllActivityRequestCall {
  Future<ApiCallResponse> call({
    int? userId,
  }) {
    final body = '''
{
  "filter": {
    "start": "",
    "length": "",
    "sortColumn": "",
    "direction": "",
    "searchValue": "",
    "skip": 0,
    "pageSize": 10
  },
  "typeId_search": 0,
  "userId": ${userId},
  "languageId": 0,
  "accessTypeId": 1,
  "employeeId_search": 0,
  "subscriperId": 2,
  "durationId_search": 0,
  "statusId_search": 0,
  "contactId": 0,
  "relatedto_search": 0,
  "relatedId": 0,
  "team": [
    0
  ],
  "types": [
    0
  ],
  "dateType": 0,
  "fromDate_report": "2020-09-08T12:31:53.337Z",
  "toDate_report": "2022-09-08T12:31:53.337Z"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AllActivityRequest',
      apiUrl: '${RimesApiGroup.baseUrl}/api/activity/all',
      callType: ApiCallType.POST,
      headers: {
        ...RimesApiGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

/// End RimesApi Group Code
