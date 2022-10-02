class AllActivityResult {
  int? activityId;
  int? employeeId;
  int? activityStatus;
  String? activitySubject;
  int? typeId;
  String? typeName;
  String? activityStatusName;
  String? agent;
  String? activitySource;
  int? relatedType;
  int? relatedId;

  AllActivityResult({
    this.activityId,
    this.employeeId,
    this.activityStatus,
    this.activitySubject,
    this.typeId,
    this.typeName,
    this.activityStatusName,
    this.agent,
    this.activitySource,
    this.relatedType,
    this.relatedId,
  });

  AllActivityResult.fromJson(dynamic json) {
    activityId = json['activityId'];
    employeeId = json['employeeId'];
    activityStatus = json['activityStatus'];
    activitySubject = json['activitySubject'];
    typeId = json['typeId'];
    typeName = json['typeName'];
    activityStatusName = json['activityStatusName'];
    agent = json['agent'];
    activitySource = json['activitySource'];
    relatedType = json['relatedType'];
    relatedId = json['relatedId'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['activityId'] = activityId;
    map['employeeId'] = employeeId;
    map['activityStatus'] = activityStatus;
    map['activitySubject'] = activitySubject;
    map['typeId'] = typeId;
    map['typeName'] = typeName;
    map['activityStatusName'] = activityStatusName;
    map['agent'] = agent;
    map['activitySource'] = activitySource;
    map['relatedType'] = relatedType;
    map['relatedId'] = relatedId;
    return map;
  }
}
