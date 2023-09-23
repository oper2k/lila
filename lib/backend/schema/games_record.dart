import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GamesRecord extends FirestoreRecord {
  GamesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "moves" field.
  List<LeelaMovesStruct>? _moves;
  List<LeelaMovesStruct> get moves => _moves ?? const [];
  bool hasMoves() => _moves != null;

  // "request" field.
  String? _request;
  String get request => _request ?? '';
  bool hasRequest() => _request != null;

  // "isDelete" field.
  bool? _isDelete;
  bool get isDelete => _isDelete ?? false;
  bool hasIsDelete() => _isDelete != null;

  // "isEnd" field.
  bool? _isEnd;
  bool get isEnd => _isEnd ?? false;
  bool hasIsEnd() => _isEnd != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _date = snapshotData['date'] as DateTime?;
    _moves = getStructList(
      snapshotData['moves'],
      LeelaMovesStruct.fromMap,
    );
    _request = snapshotData['request'] as String?;
    _isDelete = snapshotData['isDelete'] as bool?;
    _isEnd = snapshotData['isEnd'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('games')
          : FirebaseFirestore.instance.collectionGroup('games');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('games').doc();

  static Stream<GamesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GamesRecord.fromSnapshot(s));

  static Future<GamesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GamesRecord.fromSnapshot(s));

  static GamesRecord fromSnapshot(DocumentSnapshot snapshot) => GamesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GamesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GamesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GamesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GamesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGamesRecordData({
  DateTime? date,
  String? request,
  bool? isDelete,
  bool? isEnd,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date': date,
      'request': request,
      'isDelete': isDelete,
      'isEnd': isEnd,
    }.withoutNulls,
  );

  return firestoreData;
}

class GamesRecordDocumentEquality implements Equality<GamesRecord> {
  const GamesRecordDocumentEquality();

  @override
  bool equals(GamesRecord? e1, GamesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.date == e2?.date &&
        listEquality.equals(e1?.moves, e2?.moves) &&
        e1?.request == e2?.request &&
        e1?.isDelete == e2?.isDelete &&
        e1?.isEnd == e2?.isEnd;
  }

  @override
  int hash(GamesRecord? e) => const ListEquality()
      .hash([e?.date, e?.moves, e?.request, e?.isDelete, e?.isEnd]);

  @override
  bool isValidKey(Object? o) => o is GamesRecord;
}
