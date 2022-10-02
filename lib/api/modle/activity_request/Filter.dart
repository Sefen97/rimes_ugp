class Filter {
  String? start;
  String? length;
  String? sortColumn;
  String? direction;
  String? searchValue;
  int? skip;
  int? pageSize;

  Filter({
    this.start,
    this.length,
    this.sortColumn,
    this.direction,
    this.searchValue,
    this.skip,
    this.pageSize,
  });

  Filter.fromJson(dynamic json) {
    start = json['start'];
    length = json['length'];
    sortColumn = json['sortColumn'];
    direction = json['direction'];
    searchValue = json['searchValue'];
    skip = json['skip'];
    pageSize = json['pageSize'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['start'] = start;
    map['length'] = length;
    map['sortColumn'] = sortColumn;
    map['direction'] = direction;
    map['searchValue'] = searchValue;
    map['skip'] = skip;
    map['pageSize'] = pageSize;
    return map;
  }
}
