import 'package:rimes_ugp/ui/flutter_flow/lat_lng.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    _userId = prefs.getInt('ff_userId') ?? _userId;
    _beadroom = prefs.getStringList('ff_beadroom') ?? _beadroom;
  }

  late SharedPreferences prefs;

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

  List<String> unitParChartName = ['Weak 1', 'Weak 2', 'Weak 3', 'Weak 4'];

  List<int> unitParChartValue = [10, 20, 30, 40];

  List<String> pieChartUnitName = ['Avilble', 'Reversd'];

  List<String> pieChartLeadName = ['Convert', 'Peanding', 'Reject'];

  List<int> pieChartUnitValue = [30, 20];

  List<int> pieChartLeadValue = [70, 20, 50];

  List<String> unitChoise = ['All', 'Rent', 'Sale'];

  List<String> emptyList = [];

  int _userId = 10;
  int get userId => _userId;
  set userId(int _value) {
    _userId = _value;
    prefs.setInt('ff_userId', _value);
  }

  List<String> _beadroom = ['Stodio', '1', '2', '3', '4', '5', '6', '7', '8'];
  List<String> get beadroom => _beadroom;
  set beadroom(List<String> _value) {
    _beadroom = _value;
    prefs.setStringList('ff_beadroom', _value);
  }

  void addToBeadroom(String _value) {
    _beadroom.add(_value);
    prefs.setStringList('ff_beadroom', _beadroom);
  }

  void removeFromBeadroom(String _value) {
    _beadroom.remove(_value);
    prefs.setStringList('ff_beadroom', _beadroom);
  }
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
