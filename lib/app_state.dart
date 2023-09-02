import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _randomPraseForStartGame =
          prefs.getStringList('ff_randomPraseForStartGame') ??
              _randomPraseForStartGame;
    });
    _safeInit(() {
      _boardValue = prefs.getInt('ff_boardValue') ?? _boardValue;
    });
    _safeInit(() {
      _Free3Moves = prefs.getInt('ff_Free3Moves') ?? _Free3Moves;
    });
    _safeInit(() {
      _cubeValue = prefs.getInt('ff_cubeValue') ?? _cubeValue;
    });
    _safeInit(() {
      _stopCubeRotate = prefs.getBool('ff_stopCubeRotate') ?? _stopCubeRotate;
    });
    _safeInit(() {
      _entitle = prefs.getString('ff_entitle') ?? _entitle;
    });
    _safeInit(() {
      _cube666 = prefs.getInt('ff_cube666') ?? _cube666;
    });
    _safeInit(() {
      _cubeValue666 = prefs.getInt('ff_cubeValue666') ?? _cubeValue666;
    });
    _safeInit(() {
      _endGame68 = prefs.getInt('ff_endGame68') ?? _endGame68;
    });
    _safeInit(() {
      _visibilityCardBoolean =
          prefs.getBool('ff_visibilityCardBoolean') ?? _visibilityCardBoolean;
    });
    _safeInit(() {
      _oneGame = prefs.getBool('ff_oneGame') ?? _oneGame;
    });
    _safeInit(() {
      _endGame = prefs.getBool('ff_endGame') ?? _endGame;
    });
    _safeInit(() {
      _publicID = prefs.getString('ff_publicID') ?? _publicID;
    });
    _safeInit(() {
      _apiCloud = prefs.getString('ff_apiCloud') ?? _apiCloud;
    });
    _safeInit(() {
      _ModelId = prefs.getString('ff_ModelId') ?? _ModelId;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _cubeText = [
    'Не подходит',
    'Попробуй еще раз',
    'Добро пожаловать!'
  ];
  List<String> get cubeText => _cubeText;
  set cubeText(List<String> _value) {
    _cubeText = _value;
  }

  void addToCubeText(String _value) {
    _cubeText.add(_value);
  }

  void removeFromCubeText(String _value) {
    _cubeText.remove(_value);
  }

  void removeAtIndexFromCubeText(int _index) {
    _cubeText.removeAt(_index);
  }

  void updateCubeTextAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _cubeText[_index] = updateFn(_cubeText[_index]);
  }

  List<String> _randomPraseForStartGame = [
    'Попробуй еще раз',
    'Упс, попробуй ещё раз',
    'Опять не повезло',
    'Не подходит',
    'Спроси что-то ещё'
  ];
  List<String> get randomPraseForStartGame => _randomPraseForStartGame;
  set randomPraseForStartGame(List<String> _value) {
    _randomPraseForStartGame = _value;
    prefs.setStringList('ff_randomPraseForStartGame', _value);
  }

  void addToRandomPraseForStartGame(String _value) {
    _randomPraseForStartGame.add(_value);
    prefs.setStringList('ff_randomPraseForStartGame', _randomPraseForStartGame);
  }

  void removeFromRandomPraseForStartGame(String _value) {
    _randomPraseForStartGame.remove(_value);
    prefs.setStringList('ff_randomPraseForStartGame', _randomPraseForStartGame);
  }

  void removeAtIndexFromRandomPraseForStartGame(int _index) {
    _randomPraseForStartGame.removeAt(_index);
    prefs.setStringList('ff_randomPraseForStartGame', _randomPraseForStartGame);
  }

  void updateRandomPraseForStartGameAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _randomPraseForStartGame[_index] =
        updateFn(_randomPraseForStartGame[_index]);
    prefs.setStringList('ff_randomPraseForStartGame', _randomPraseForStartGame);
  }

  List<int> _removeNumberField = [5, 14, 23];
  List<int> get removeNumberField => _removeNumberField;
  set removeNumberField(List<int> _value) {
    _removeNumberField = _value;
  }

  void addToRemoveNumberField(int _value) {
    _removeNumberField.add(_value);
  }

  void removeFromRemoveNumberField(int _value) {
    _removeNumberField.remove(_value);
  }

  void removeAtIndexFromRemoveNumberField(int _index) {
    _removeNumberField.removeAt(_index);
  }

  void updateRemoveNumberFieldAtIndex(
    int _index,
    int Function(int) updateFn,
  ) {
    _removeNumberField[_index] = updateFn(_removeNumberField[_index]);
  }

  bool _requestVisibility = false;
  bool get requestVisibility => _requestVisibility;
  set requestVisibility(bool _value) {
    _requestVisibility = _value;
  }

  int _boardValue = 0;
  int get boardValue => _boardValue;
  set boardValue(int _value) {
    _boardValue = _value;
    prefs.setInt('ff_boardValue', _value);
  }

  int _Free3Moves = 0;
  int get Free3Moves => _Free3Moves;
  set Free3Moves(int _value) {
    _Free3Moves = _value;
    prefs.setInt('ff_Free3Moves', _value);
  }

  bool _visibilityInsightButtom = false;
  bool get visibilityInsightButtom => _visibilityInsightButtom;
  set visibilityInsightButtom(bool _value) {
    _visibilityInsightButtom = _value;
  }

  int _visibilityCard = 0;
  int get visibilityCard => _visibilityCard;
  set visibilityCard(int _value) {
    _visibilityCard = _value;
  }

  int _cubeValue = 0;
  int get cubeValue => _cubeValue;
  set cubeValue(int _value) {
    _cubeValue = _value;
    prefs.setInt('ff_cubeValue', _value);
  }

  bool _stopCubeRotate = false;
  bool get stopCubeRotate => _stopCubeRotate;
  set stopCubeRotate(bool _value) {
    _stopCubeRotate = _value;
    prefs.setBool('ff_stopCubeRotate', _value);
  }

  String _entitle = 'issubscribe';
  String get entitle => _entitle;
  set entitle(String _value) {
    _entitle = _value;
    prefs.setString('ff_entitle', _value);
  }

  int _cube666 = 0;
  int get cube666 => _cube666;
  set cube666(int _value) {
    _cube666 = _value;
    prefs.setInt('ff_cube666', _value);
  }

  int _cubeValue666 = 0;
  int get cubeValue666 => _cubeValue666;
  set cubeValue666(int _value) {
    _cubeValue666 = _value;
    prefs.setInt('ff_cubeValue666', _value);
  }

  bool _test = false;
  bool get test => _test;
  set test(bool _value) {
    _test = _value;
  }

  int _endGame68 = 0;
  int get endGame68 => _endGame68;
  set endGame68(int _value) {
    _endGame68 = _value;
    prefs.setInt('ff_endGame68', _value);
  }

  bool _visibilityCardBoolean = false;
  bool get visibilityCardBoolean => _visibilityCardBoolean;
  set visibilityCardBoolean(bool _value) {
    _visibilityCardBoolean = _value;
    prefs.setBool('ff_visibilityCardBoolean', _value);
  }

  String _meditationName = '';
  String get meditationName => _meditationName;
  set meditationName(String _value) {
    _meditationName = _value;
  }

  String _meditationSound = '';
  String get meditationSound => _meditationSound;
  set meditationSound(String _value) {
    _meditationSound = _value;
  }

  String _meditationDescription = '';
  String get meditationDescription => _meditationDescription;
  set meditationDescription(String _value) {
    _meditationDescription = _value;
  }

  bool _oneGame = false;
  bool get oneGame => _oneGame;
  set oneGame(bool _value) {
    _oneGame = _value;
    prefs.setBool('ff_oneGame', _value);
  }

  bool _endGame = false;
  bool get endGame => _endGame;
  set endGame(bool _value) {
    _endGame = _value;
    prefs.setBool('ff_endGame', _value);
  }

  bool _GameEnd666 = false;
  bool get GameEnd666 => _GameEnd666;
  set GameEnd666(bool _value) {
    _GameEnd666 = _value;
  }

  String _publicID = '';
  String get publicID => _publicID;
  set publicID(String _value) {
    _publicID = _value;
    prefs.setString('ff_publicID', _value);
  }

  String _apiCloud = '';
  String get apiCloud => _apiCloud;
  set apiCloud(String _value) {
    _apiCloud = _value;
    prefs.setString('ff_apiCloud', _value);
  }

  String _ModelId = '';
  String get ModelId => _ModelId;
  set ModelId(String _value) {
    _ModelId = _value;
    prefs.setString('ff_ModelId', _value);
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

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
