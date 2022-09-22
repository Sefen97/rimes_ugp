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
  static LookuopCommonCall lookuopCommonCall = LookuopCommonCall();
  static LeadCommentsCall leadCommentsCall = LeadCommentsCall();
  static ActivityDetailsCall activityDetailsCall = ActivityDetailsCall();
  static AllPropertiesCall allPropertiesCall = AllPropertiesCall();
  static LookuopAllEmployeesCall lookuopAllEmployeesCall =
      LookuopAllEmployeesCall();
  static AddLeadCommintCall addLeadCommintCall = AddLeadCommintCall();
  static SalesLeadRequestCall salesLeadRequestCall = SalesLeadRequestCall();
  static AllCitiesCall allCitiesCall = AllCitiesCall();
  static AllCommintyMobileCall allCommintyMobileCall = AllCommintyMobileCall();
  static AllSubCommunityCall allSubCommunityCall = AllSubCommunityCall();
  static AllPropertyMasterCall allPropertyMasterCall = AllPropertyMasterCall();
  static AllContactCall allContactCall = AllContactCall();
  static PropertyGetCall propertyGetCall = PropertyGetCall();
  static AttachGetCall attachGetCall = AttachGetCall();
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

class LookuopCommonCall {
  Future<ApiCallResponse> call({
    int? lookupId,
    int? languageId,
    int? subscriberId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'LookuopCommon',
      apiUrl: '${RimesApiGroup.baseUrl}/api/lookup/common/all/?',
      callType: ApiCallType.GET,
      headers: {
        ...RimesApiGroup.headers,
      },
      params: {
        'lookupId': lookupId,
        'languageId': languageId,
        'subscriberId': subscriberId,
      },
      returnBody: true,
    );
  }
}

class LeadCommentsCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? subscriberId,
    int? id,
    int? accessTypeId,
  }) {
    final body = '''
{
  "userId": ${userId},
  "subscriberId": ${subscriberId},
  "id": ${id},
  "accessTypeId": ${accessTypeId},
  "team": [
    0
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'LeadComments',
      apiUrl: '${RimesApiGroup.baseUrl}api/saleslead/comments/get',
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

class ActivityDetailsCall {
  Future<ApiCallResponse> call({
    int? id,
    int? userId,
    int? subscriberId,
    int? languageId,
  }) {
    final body = '''
{
  "userId": ${userId},
  "subscriberId": ${subscriberId},
  "id": ${id},
  "languageId": ${languageId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ActivityDetails',
      apiUrl: '${RimesApiGroup.baseUrl}api/activity/get',
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

class AllPropertiesCall {
  Future<ApiCallResponse> call({
    int? pageSize,
    int? id,
    int? subscriberId,
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
    "pageSize": ${pageSize}
  },
  "id": ${id},
  "subscriberId": ${subscriberId},
  "userId": ${userId},
  "languageId": 1,
  "accessTypeId": 1,
  "availablity": 0,
  "listingTypeId": 1,
  "propertyMasterId": 0,
  "types": [
    1
  ],
  "cities": [],
  "categories": [],
  "status": [],
  "nextAvailableFrom": "",
  "nextAvailableTo": "",
  "listingDate": "",
  "bedroom": 0,
  "contactId": 0,
  "published": true,
  "team": []
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AllProperties',
      apiUrl: '${RimesApiGroup.baseUrl}api/property/all',
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

class LookuopAllEmployeesCall {
  Future<ApiCallResponse> call({
    int? accessTypeId,
    int? userId,
    int? subscriptioId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'LookuopAllEmployees',
      apiUrl: '${RimesApiGroup.baseUrl}api/lookup/employees/all/?',
      callType: ApiCallType.GET,
      headers: {
        ...RimesApiGroup.headers,
      },
      params: {
        'accessTypeId': accessTypeId,
        'userId': userId,
        'subscriptioId': subscriptioId,
      },
      returnBody: true,
    );
  }
}

class AddLeadCommintCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? subscriberId,
    String? comment = '',
    int? salesLeadId,
    int? commentId,
  }) {
    final body = '''
{
  "userId": ${userId},
  "subscriberId": ${subscriberId},
  "comment": "${comment}",
  "salesLeadId": ${salesLeadId},
  "commentId": ${commentId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AddLeadCommint',
      apiUrl: '${RimesApiGroup.baseUrl}api/salesLead/comment/add',
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

class SalesLeadRequestCall {
  Future<ApiCallResponse> call({
    int? pageSize,
    int? userId,
    int? subscriberId,
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
  "leaToDate_search": "2022-09-21T08:12:47.174Z",
  "leaFromDate_search": "2021-09-21T08:12:47.174Z",
  "communityId_search": 0,
  "community": 0,
  "subCommunity": 0,
  "category": 0,
  "type": 0,
  "userId": ${userId},
  "accessTypeId": 0,
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
  "fromDate_report": "2022-09-21T08:12:47.174Z",
  "toDate_report": "2022-09-21T08:12:47.174Z"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SalesLeadRequest',
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

class AllCitiesCall {
  Future<ApiCallResponse> call({
    int? subscriberId,
    int? countryId,
    int? parentId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AllCities',
      apiUrl: '${RimesApiGroup.baseUrl}api/lookup/citytree/all?',
      callType: ApiCallType.GET,
      headers: {
        ...RimesApiGroup.headers,
      },
      params: {
        'subscriberId': subscriberId,
        'countryId': countryId,
        'parentId': parentId,
      },
      returnBody: true,
    );
  }
}

class AllCommintyMobileCall {
  Future<ApiCallResponse> call({
    int? id,
    int? subscriberId,
    int? languageId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AllCommintyMobile',
      apiUrl: '${RimesApiGroup.baseUrl}/api/lookup/unitcommunity/mobile/all?',
      callType: ApiCallType.GET,
      headers: {
        ...RimesApiGroup.headers,
      },
      params: {
        'id': id,
        'subscriberId': subscriberId,
        'languageId': languageId,
      },
      returnBody: true,
    );
  }
}

class AllSubCommunityCall {
  Future<ApiCallResponse> call({
    int? id,
    int? subscriberId,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'AllSubCommunity',
      apiUrl: '${RimesApiGroup.baseUrl}api/lookup/unitsubcommunity/all?',
      callType: ApiCallType.GET,
      headers: {
        ...RimesApiGroup.headers,
      },
      params: {
        'id': id,
        'subscriberId': subscriberId,
      },
      returnBody: true,
    );
  }
}

class AllPropertyMasterCall {
  Future<ApiCallResponse> call({
    int? pageSize = 10,
    int? masterPropType = 1,
    int? userId = 10,
    int? subscriberId = 2,
    int? languageId = 2,
    int? accessTypeId = 2,
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
  "masterPropId": 0,
  "masterPropName": "",
  "masterPropCommunity": 0,
  "masterPropType": ${masterPropType},
  "subscriberId": ${subscriberId},
  "languageId": ${languageId},
  "employeeId": 0,
  "referedBy": 0,
  "userId": ${userId},
  "defaultPropertyMasterCode": 0,
  "accessTypeId": ${accessTypeId},
  "team": [],
  "dateType": 0,
  "fromDate_report": "2021-09-22T09:19:26.174Z",
  "toDate_report": "2022-09-22T09:19:26.174Z"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AllPropertyMaster',
      apiUrl: '${RimesApiGroup.baseUrl}api/property/master/all',
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

class AllContactCall {
  Future<ApiCallResponse> call({
    int? id = 10,
    int? subscriberId = 2,
    int? languageId = 2,
    int? accessTypeId = 1,
  }) {
    final body = '''
{
   "filter":{
      "start":null,
      "length":null,
      "sortColumn":null,
      "direction":null,
      "searchValue":null,
      "skip":0,
      "pageSize":10000
   },
   "id":10,
   "subscriberId":2,
   "languageId":1,
   "name":null,
   "contactTypeId":0,
   "code":0,
   "accessTypeId":1,
   "industryId":0,
   "industryTypeId":0,
   "phone":null,
   "mobile":null,
   "email":null,
   "searchText":null,
   "searchType":0,
   "start":0,
   "limit":0,
   "light":true,
   "team":[
      0
   ],
   "currentUser":0
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AllContact',
      apiUrl: '${RimesApiGroup.baseUrl}api/contact/all',
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

class PropertyGetCall {
  Future<ApiCallResponse> call({
    int? userId = 10,
    int? languageId = 2,
    int? subscriberId = 2,
    int? accessTypeId = 1,
    int? id,
  }) {
    final body = '''
{
  "userId": ${userId},
  "languageId":${languageId},
  "subscriberId":${subscriberId} ,
  "accessTypeId":${accessTypeId} ,
  "id":${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'PropertyGet',
      apiUrl: '${RimesApiGroup.baseUrl}api/property/get',
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

class AttachGetCall {
  Future<ApiCallResponse> call({
    int? userId,
    int? subscriberId,
    int? type,
    int? id,
  }) {
    final body = '''
{
  "userId": ${userId},
  "subscriberId":${subscriberId},
  "type":${type},
  "id":${id}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'AttachGet',
      apiUrl: '${RimesApiGroup.baseUrl}api/attachments/get',
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

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
