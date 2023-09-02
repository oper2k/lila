import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewsRecord extends FirestoreRecord {
  NewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "imageTitle" field.
  String? _imageTitle;
  String get imageTitle => _imageTitle ?? '';
  bool hasImageTitle() => _imageTitle != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "textNews" field.
  String? _textNews;
  String get textNews => _textNews ?? '';
  bool hasTextNews() => _textNews != null;

  // "imageNews" field.
  String? _imageNews;
  String get imageNews => _imageNews ?? '';
  bool hasImageNews() => _imageNews != null;

  // "subTitle" field.
  String? _subTitle;
  String get subTitle => _subTitle ?? '';
  bool hasSubTitle() => _subTitle != null;

  // "instaUrl" field.
  String? _instaUrl;
  String get instaUrl => _instaUrl ?? '';
  bool hasInstaUrl() => _instaUrl != null;

  // "textNews2" field.
  String? _textNews2;
  String get textNews2 => _textNews2 ?? '';
  bool hasTextNews2() => _textNews2 != null;

  // "imageHome" field.
  String? _imageHome;
  String get imageHome => _imageHome ?? '';
  bool hasImageHome() => _imageHome != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _imageTitle = snapshotData['imageTitle'] as String?;
    _author = snapshotData['author'] as String?;
    _textNews = snapshotData['textNews'] as String?;
    _imageNews = snapshotData['imageNews'] as String?;
    _subTitle = snapshotData['subTitle'] as String?;
    _instaUrl = snapshotData['instaUrl'] as String?;
    _textNews2 = snapshotData['textNews2'] as String?;
    _imageHome = snapshotData['imageHome'] as String?;
    _link = snapshotData['link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news');

  static Stream<NewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewsRecord.fromSnapshot(s));

  static Future<NewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewsRecord.fromSnapshot(s));

  static NewsRecord fromSnapshot(DocumentSnapshot snapshot) => NewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewsRecordData({
  String? title,
  String? imageTitle,
  String? author,
  String? textNews,
  String? imageNews,
  String? subTitle,
  String? instaUrl,
  String? textNews2,
  String? imageHome,
  String? link,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'imageTitle': imageTitle,
      'author': author,
      'textNews': textNews,
      'imageNews': imageNews,
      'subTitle': subTitle,
      'instaUrl': instaUrl,
      'textNews2': textNews2,
      'imageHome': imageHome,
      'link': link,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewsRecordDocumentEquality implements Equality<NewsRecord> {
  const NewsRecordDocumentEquality();

  @override
  bool equals(NewsRecord? e1, NewsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.imageTitle == e2?.imageTitle &&
        e1?.author == e2?.author &&
        e1?.textNews == e2?.textNews &&
        e1?.imageNews == e2?.imageNews &&
        e1?.subTitle == e2?.subTitle &&
        e1?.instaUrl == e2?.instaUrl &&
        e1?.textNews2 == e2?.textNews2 &&
        e1?.imageHome == e2?.imageHome &&
        e1?.link == e2?.link;
  }

  @override
  int hash(NewsRecord? e) => const ListEquality().hash([
        e?.title,
        e?.imageTitle,
        e?.author,
        e?.textNews,
        e?.imageNews,
        e?.subTitle,
        e?.instaUrl,
        e?.textNews2,
        e?.imageHome,
        e?.link
      ]);

  @override
  bool isValidKey(Object? o) => o is NewsRecord;
}
