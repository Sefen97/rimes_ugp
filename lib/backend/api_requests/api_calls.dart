import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class LoginRequestCall {
  static Future<ApiCallResponse> call({
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
      apiUrl: 'http://45.35.169.130:8765/CRMRealEstateNew_Test/api/authorize',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}

class AdmindashboardCall {
  static Future<ApiCallResponse> call({
    String? userId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Admindashboard',
      apiUrl:
          'http://45.35.169.130:8765/CRMRealEstateNew_Test/api/dashboard/admin?',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
      },
      returnBody: true,
    );
  }
}

class AllActivityRequestCall {
  static Future<ApiCallResponse> call({
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
      apiUrl:
          'http://45.35.169.130:8765/CRMRealEstateNew_Test/api/activity/all',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'userId': userId,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
