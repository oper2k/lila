import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "display_family" field.
  String? _displayFamily;
  String get displayFamily => _displayFamily ?? '';
  bool hasDisplayFamily() => _displayFamily != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "date_birth" field.
  DateTime? _dateBirth;
  DateTime? get dateBirth => _dateBirth;
  bool hasDateBirth() => _dateBirth != null;

  // "first_entry" field.
  bool? _firstEntry;
  bool get firstEntry => _firstEntry ?? false;
  bool hasFirstEntry() => _firstEntry != null;

  // "end_free_game" field.
  bool? _endFreeGame;
  bool get endFreeGame => _endFreeGame ?? false;
  bool hasEndFreeGame() => _endFreeGame != null;

  // "buyGame" field.
  bool? _buyGame;
  bool get buyGame => _buyGame ?? false;
  bool hasBuyGame() => _buyGame != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _displayFamily = snapshotData['display_family'] as String?;
    _gender = snapshotData['gender'] as String?;
    _dateBirth = snapshotData['date_birth'] as DateTime?;
    _firstEntry = snapshotData['first_entry'] as bool?;
    _endFreeGame = snapshotData['end_free_game'] as bool?;
    _buyGame = snapshotData['buyGame'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? displayFamily,
  String? gender,
  DateTime? dateBirth,
  bool? firstEntry,
  bool? endFreeGame,
  bool? buyGame,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'display_family': displayFamily,
      'gender': gender,
      'date_birth': dateBirth,
      'first_entry': firstEntry,
      'end_free_game': endFreeGame,
      'buyGame': buyGame,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.displayFamily == e2?.displayFamily &&
        e1?.gender == e2?.gender &&
        e1?.dateBirth == e2?.dateBirth &&
        e1?.firstEntry == e2?.firstEntry &&
        e1?.endFreeGame == e2?.endFreeGame &&
        e1?.buyGame == e2?.buyGame;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.displayFamily,
        e?.gender,
        e?.dateBirth,
        e?.firstEntry,
        e?.endFreeGame,
        e?.buyGame
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
