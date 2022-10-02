import 'Result.dart';

class ActivityResponse {
  String? version;
  int? statusCode;
  String? requestId;
  List<dynamic>? error;
  List<AllActivityResult>? allActivityResult;
  bool? success;

  ActivityResponse({
    this.version,
    this.statusCode,
    this.requestId,
    this.error,
    this.allActivityResult,
    this.success,
  });

  ActivityResponse.fromJson(dynamic json) {
    version = json['version'];
    statusCode = json['statusCode'];
    requestId = json['requestId'];
    if (json['error'] != null) {
      error = [];
      json['error'].forEach((v) {
        error!.add(v);
      });
    }
    if (json['result'] != null) {
      allActivityResult = [];
      json['result'].forEach((v) {
        allActivityResult!.add(AllActivityResult.fromJson(v));
      });
    }
    success = json['success'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['version'] = version;
    map['statusCode'] = statusCode;
    map['requestId'] = requestId;
    if (error != null) {
      map['error'] = error!.map((v) => v.toJson()).toList();
    }
    if (allActivityResult != null) {
      map['result'] = allActivityResult!.map((v) => v.toJson()).toList();
    }
    map['success'] = success;
    return map;
  }
}
