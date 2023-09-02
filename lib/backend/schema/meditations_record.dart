import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MeditationsRecord extends FirestoreRecord {
  MeditationsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _link = snapshotData['link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('meditations');

  static Stream<MeditationsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MeditationsRecord.fromSnapshot(s));

  static Future<MeditationsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MeditationsRecord.fromSnapshot(s));

  static MeditationsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MeditationsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MeditationsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MeditationsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MeditationsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MeditationsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMeditationsRecordData({
  String? name,
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class MeditationsRecordDocumentEquality implements Equality<MeditationsRecord> {
  const MeditationsRecordDocumentEquality();

  @override
  bool equals(MeditationsRecord? e1, MeditationsRecord? e2) {
    return e1?.name == e2?.name && e1?.link == e2?.link;
  }

  @override
  int hash(MeditationsRecord? e) =>
      const ListEquality().hash([e?.name, e?.link]);

  @override
  bool isValidKey(Object? o) => o is MeditationsRecord;
}
