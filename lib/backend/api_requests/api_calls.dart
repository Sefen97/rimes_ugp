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
  static AllLeadsCall allLeadsCall = AllLeadsCall();
  static LeadDashboardCall leadDashboardCall = LeadDashboardCall();
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
      apiUrl: '${RimesApiGroup.baseUrl}api/authorize',
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
      apiUrl: '${RimesApiGroup.baseUrl}api/activity/all',
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

class AllLeadsCall {
  Future<ApiCallResponse> call({
    int? pageSize = 10,
    int? userId = 10,
    int? subscriberId = 2,
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
    "pageSize": ${pageSize}
  },
  "contactTypeId_search": 0,
  "ratingId_search": 0,
  "priorityId_search": 0,
  "leadSourceId_search": 0,
  "employeeId_search": 0,
  "leaToDate_search": "2022-09-11T10:23:24.514Z",
  "leaFromDate_search": "2020-09-11T10:23:24.514Z",
  "communityId_search": 0,
  "community": 0,
  "subCommunity": 0,
  "category": 0,
  "type": 0,
  "userId": ${userId},
  "accessTypeId": 1,
  "languageId": 0,
  "building": 0,
  "unitNo": "",
  "contactId": 0,
  "city": 0,
  "bed": 0,
  "area": 0,
  "price": 0,
  "name": "",
  "subscriberId": ${subscriberId},
  "limit": 0,
  "leadType": 0,
  "team": [],
  "bedroom": 0,
  "dateType": 0,
  "fromDate_report": "2020-09-11T10:23:24.514Z",
  "toDate_report": "2022-09-11T10:23:24.514Z"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AllLeads',
      apiUrl: '${RimesApiGroup.baseUrl}api/saleslead/all',
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

class LeadDashboardCall {
  Future<ApiCallResponse> call({
    int? userId = 10,
    int? filterId = 1,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'LeadDashboard',
      apiUrl: '${RimesApiGroup.baseUrl}api/dashboard/leads/filter?',
      callType: ApiCallType.GET,
      headers: {
        ...RimesApiGroup.headers,
      },
      params: {
        'userId': userId,
        'filterId': filterId,
      },
      returnBody: true,
    );
  }
}

/// End RimesApi Group Code
