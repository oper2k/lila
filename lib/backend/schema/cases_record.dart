import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CasesRecord extends FirestoreRecord {
  CasesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "image" field.
  List<String>? _image;
  List<String> get image => _image ?? const [];
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "imageUser" field.
  String? _imageUser;
  String get imageUser => _imageUser ?? '';
  bool hasImageUser() => _imageUser != null;

  void _initializeFields() {
    _image = getDataList(snapshotData['image']);
    _name = snapshotData['name'] as String?;
    _imageUser = snapshotData['imageUser'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cases');

  static Stream<CasesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CasesRecord.fromSnapshot(s));

  static Future<CasesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CasesRecord.fromSnapshot(s));

  static CasesRecord fromSnapshot(DocumentSnapshot snapshot) => CasesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CasesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CasesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CasesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CasesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCasesRecordData({
  String? name,
  String? imageUser,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'imageUser': imageUser,
    }.withoutNulls,
  );

  return firestoreData;
}

class CasesRecordDocumentEquality implements Equality<CasesRecord> {
  const CasesRecordDocumentEquality();

  @override
  bool equals(CasesRecord? e1, CasesRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.image, e2?.image) &&
        e1?.name == e2?.name &&
        e1?.imageUser == e2?.imageUser;
  }

  @override
  int hash(CasesRecord? e) =>
      const ListEquality().hash([e?.image, e?.name, e?.imageUser]);

  @override
  bool isValidKey(Object? o) => o is CasesRecord;
}
