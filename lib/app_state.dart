import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  late SharedPreferences prefs;

  String employeeId = '';

  List<dynamic> activityList = [];

  bool isLoadindLogin = false;

  String email = '';

  String password = '';

  bool isLoading = false;

  String userName = 'Null';

  String profileImage = '';

  List<String> pickTo = [
    'Unit',
    'Content',
    'Lead',
    'Activity',
    'Test 1',
    'Test 2',
    'Test 3'
  ];

  List<int> leadchart = [10, 20, 30, 20, 60];

  List<String> namelead = ['weak 1', 'weak 2', 'weak 3', 'weak 4', 'weak 5'];
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
