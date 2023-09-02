import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameFieldRecord extends FirestoreRecord {
  GameFieldRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "number" field.
  int? _number;
  int get number => _number ?? 0;
  bool hasNumber() => _number != null;

  // "isFinished" field.
  bool? _isFinished;
  bool get isFinished => _isFinished ?? false;
  bool hasIsFinished() => _isFinished != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  // "reverse_order" field.
  int? _reverseOrder;
  int get reverseOrder => _reverseOrder ?? 0;
  bool hasReverseOrder() => _reverseOrder != null;

  // "remove_number_field" field.
  int? _removeNumberField;
  int get removeNumberField => _removeNumberField ?? 0;
  bool hasRemoveNumberField() => _removeNumberField != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _number = castToType<int>(snapshotData['number']);
    _isFinished = snapshotData['isFinished'] as bool?;
    _description = snapshotData['description'] as String?;
    _audio = snapshotData['audio'] as String?;
    _reverseOrder = castToType<int>(snapshotData['reverse_order']);
    _removeNumberField = castToType<int>(snapshotData['remove_number_field']);
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('gameField');

  static Stream<GameFieldRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GameFieldRecord.fromSnapshot(s));

  static Future<GameFieldRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GameFieldRecord.fromSnapshot(s));

  static GameFieldRecord fromSnapshot(DocumentSnapshot snapshot) =>
      GameFieldRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GameFieldRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GameFieldRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GameFieldRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GameFieldRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGameFieldRecordData({
  int? number,
  bool? isFinished,
  String? description,
  String? audio,
  int? reverseOrder,
  int? removeNumberField,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'number': number,
      'isFinished': isFinished,
      'description': description,
      'audio': audio,
      'reverse_order': reverseOrder,
      'remove_number_field': removeNumberField,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class GameFieldRecordDocumentEquality implements Equality<GameFieldRecord> {
  const GameFieldRecordDocumentEquality();

  @override
  bool equals(GameFieldRecord? e1, GameFieldRecord? e2) {
    return e1?.number == e2?.number &&
        e1?.isFinished == e2?.isFinished &&
        e1?.description == e2?.description &&
        e1?.audio == e2?.audio &&
        e1?.reverseOrder == e2?.reverseOrder &&
        e1?.removeNumberField == e2?.removeNumberField &&
        e1?.title == e2?.title;
  }

  @override
  int hash(GameFieldRecord? e) => const ListEquality().hash([
        e?.number,
        e?.isFinished,
        e?.description,
        e?.audio,
        e?.reverseOrder,
        e?.removeNumberField,
        e?.title
      ]);

  @override
  bool isValidKey(Object? o) => o is GameFieldRecord;
}
