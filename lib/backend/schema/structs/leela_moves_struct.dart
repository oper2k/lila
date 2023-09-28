// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LeelaMovesStruct extends FFFirebaseStruct {
  LeelaMovesStruct({
    int? move,
    String? insite,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _move = move,
        _insite = insite,
        super(firestoreUtilData);

  // "move" field.
  int? _move;
  int get move => _move ?? 0;
  set move(int? val) => _move = val;
  void incrementMove(int amount) => _move = move + amount;
  bool hasMove() => _move != null;

  // "insite" field.
  String? _insite;
  String get insite => _insite ?? '';
  set insite(String? val) => _insite = val;
  bool hasInsite() => _insite != null;

  static LeelaMovesStruct fromMap(Map<String, dynamic> data) =>
      LeelaMovesStruct(
        move: castToType<int>(data['move']),
        insite: data['insite'] as String?,
      );

  static LeelaMovesStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? LeelaMovesStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'move': _move,
        'insite': _insite,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => toMap();
  static LeelaMovesStruct fromSerializableMap(Map<String, dynamic> data) =>
      fromMap(data);

  @override
  String toString() => 'LeelaMovesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LeelaMovesStruct &&
        move == other.move &&
        insite == other.insite;
  }

  @override
  int get hashCode => const ListEquality().hash([move, insite]);
}

LeelaMovesStruct createLeelaMovesStruct({
  int? move,
  String? insite,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    LeelaMovesStruct(
      move: move,
      insite: insite,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

LeelaMovesStruct? updateLeelaMovesStruct(
  LeelaMovesStruct? leelaMoves, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    leelaMoves
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addLeelaMovesStructData(
  Map<String, dynamic> firestoreData,
  LeelaMovesStruct? leelaMoves,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (leelaMoves == null) {
    return;
  }
  if (leelaMoves.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && leelaMoves.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final leelaMovesData = getLeelaMovesFirestoreData(leelaMoves, forFieldValue);
  final nestedData = leelaMovesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = leelaMoves.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getLeelaMovesFirestoreData(
  LeelaMovesStruct? leelaMoves, [
  bool forFieldValue = false,
]) {
  if (leelaMoves == null) {
    return {};
  }
  final firestoreData = mapToFirestore(leelaMoves.toMap());

  // Add any Firestore field values
  leelaMoves.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getLeelaMovesListFirestoreData(
  List<LeelaMovesStruct>? leelaMovess,
) =>
    leelaMovess?.map((e) => getLeelaMovesFirestoreData(e, true)).toList() ?? [];
