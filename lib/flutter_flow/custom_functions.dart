import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String subString(
  String text,
  int startInt,
  int endInt,
) {
  return text.substring(startInt, endInt);
}

bool subLength(String text) {
  return text.length <= 3;
}

bool subLength50(String text) {
  return text.length <= 3;
}

List<int> numbersGame() {
  List<int> numbersList = [for (var i = 1; i < 73; i += 1) i];

  numbersList.sort((a, b) => a.compareTo(b));

  return numbersList;
}

String returnStringFromDateTimeNow() {
  final DateTime now = DateTime.now();
  final DateFormat formatter = DateFormat('H');
  final int formattedDate = int.parse(formatter.format(now));

  if (formattedDate >= 5 && formattedDate <= 10) {
    return 'Доброе утро,';
  }

  if (formattedDate > 10 && formattedDate < 17) {
    return 'Добрый день,';
  }

  if (formattedDate >= 17 && formattedDate < 22) {
    return 'Добрый вечер,';
  }

  if (formattedDate >= 22 && formattedDate < 5) {
    return 'Доброй ночи,';
  } else {
    return 'Добрый день,';
  }
}

String returnRandomStringFromListString(List<String> stringList) {
  int newIndex = math.Random().nextInt(stringList.length);

  return stringList[newIndex];
}

int additionGameFild(
  int number1,
  int number2,
) {
  if (number1 + number2 > 72) {
    return number2;
  } else {
    return number1 + number2;
  }
}

int additionGameFildsubtract(
  int number1,
  int number2,
) {
  return number1 - number2;
}

String titleGameLowerCase(String text) {
  return "${text[0].toUpperCase()}${text.substring(1).toLowerCase()}";
}

String? stringAudio(String? audio) {
  return audio.toString();
}
