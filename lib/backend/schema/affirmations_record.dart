import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AffirmationsRecord extends FirestoreRecord {
  AffirmationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "color" field.
  Color? _color;
  Color? get color => _color;
  bool hasColor() => _color != null;

  // "audio" field.
  String? _audio;
  String get audio => _audio ?? '';
  bool hasAudio() => _audio != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _color = getSchemaColor(snapshotData['color']);
    _audio = snapshotData['audio'] as String?;
    _id = castToType<int>(snapshotData['id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('affirmations');

  static Stream<AffirmationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AffirmationsRecord.fromSnapshot(s));

  static Future<AffirmationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AffirmationsRecord.fromSnapshot(s));

  static AffirmationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AffirmationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AffirmationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AffirmationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AffirmationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AffirmationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAffirmationsRecordData({
  String? name,
  Color? color,
  String? audio,
  int? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'color': color,
      'audio': audio,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class AffirmationsRecordDocumentEquality
    implements Equality<AffirmationsRecord> {
  const AffirmationsRecordDocumentEquality();

  @override
  bool equals(AffirmationsRecord? e1, AffirmationsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.color == e2?.color &&
        e1?.audio == e2?.audio &&
        e1?.id == e2?.id;
  }

  @override
  int hash(AffirmationsRecord? e) =>
      const ListEquality().hash([e?.name, e?.color, e?.audio, e?.id]);

  @override
  bool isValidKey(Object? o) => o is AffirmationsRecord;
}
