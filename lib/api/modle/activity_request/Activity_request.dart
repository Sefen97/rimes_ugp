import 'Filter.dart';

class ActivityRequest {
  Filter? filter;
  int? typeIdSearch;
  String? userId;
  int? languageId;
  int? accessTypeId;
  int? employeeIdSearch;
  int? subscriperId;
  int? durationIdSearch;
  int? statusIdSearch;
  int? contactId;
  int? relatedtoSearch;
  int? relatedId;
  List<int>? team;
  List<int>? types;
  int? dateType;
  String? fromDateReport;
  String? toDateReport;

  ActivityRequest({
    this.filter,
    this.typeIdSearch,
    this.userId,
    this.languageId,
    this.accessTypeId,
    this.employeeIdSearch,
    this.subscriperId,
    this.durationIdSearch,
    this.statusIdSearch,
    this.contactId,
    this.relatedtoSearch,
    this.relatedId,
    this.team,
    this.types,
    this.dateType,
    this.fromDateReport,
    this.toDateReport,
  });

  ActivityRequest.fromJson(dynamic json) {
    filter = json['filter'] != null ? Filter.fromJson(json['filter']) : null;
    typeIdSearch = json['typeId_search'];
    userId = json['userId'];
    languageId = json['languageId'];
    accessTypeId = json['accessTypeId'];
    employeeIdSearch = json['employeeId_search'];
    subscriperId = json['subscriperId'];
    durationIdSearch = json['durationId_search'];
    statusIdSearch = json['statusId_search'];
    contactId = json['contactId'];
    relatedtoSearch = json['relatedto_search'];
    relatedId = json['relatedId'];
    team = json['team'] != null ? json['team'].cast<int>() : [];
    types = json['types'] != null ? json['types'].cast<int>() : [];
    dateType = json['dateType'];
    fromDateReport = json['fromDate_report'];
    toDateReport = json['toDate_report'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (filter != null) {
      map['filter'] = filter!.toJson();
    }
    map['typeId_search'] = typeIdSearch;
    map['userId'] = userId;
    map['languageId'] = languageId;
    map['accessTypeId'] = accessTypeId;
    map['employeeId_search'] = employeeIdSearch;
    map['subscriperId'] = subscriperId;
    map['durationId_search'] = durationIdSearch;
    map['statusId_search'] = statusIdSearch;
    map['contactId'] = contactId;
    map['relatedto_search'] = relatedtoSearch;
    map['relatedId'] = relatedId;
    map['team'] = team;
    map['types'] = types;
    map['dateType'] = dateType;
    map['fromDate_report'] = fromDateReport;
    map['toDate_report'] = toDateReport;
    return map;
  }
}
