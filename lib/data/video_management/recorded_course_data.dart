// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';

class RecordedCoursesData {
  String id;
  String courseName;
  String facultie;
  String courseId;
  String categoryId;
  num courseFee;
  num duration;
  num postedDate;
  num postedTime;
  List<String> videos;
  List<String> subscribedStudents;
  RecordedCoursesData({
    required this.id,
    required this.courseName,
    required this.facultie,
    required this.courseId,
    required this.categoryId,
    required this.courseFee,
    required this.duration,
    required this.postedDate,
    required this.postedTime,
    required this.videos,
    required this.subscribedStudents,
  });

  RecordedCoursesData copyWith({
    String? id,
    String? courseName,
    String? facultie,
    String? courseId,
    String? categoryId,
    num? courseFee,
    num? duration,
    int? postedDate,
    int? postedTime,
    List<String>? videos,
    List<String>? subscribedStudents,
  }) {
    return RecordedCoursesData(
      id: id ?? this.id,
      courseName: courseName ?? this.courseName,
      facultie: facultie ?? this.facultie,
      courseId: courseId ?? this.courseId,
      categoryId: categoryId ?? this.categoryId,
      courseFee: courseFee ?? this.courseFee,
      duration: duration ?? this.duration,
      postedDate: postedDate ?? this.postedDate,
      postedTime: postedTime ?? this.postedTime,
      videos: videos ?? this.videos,
      subscribedStudents: subscribedStudents ?? this.subscribedStudents,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'courseName': courseName,
      'facultie': facultie,
      'courseId': courseId,
      'categoryId': categoryId,
      'courseFee': courseFee,
      'duration': duration,
      'postedDate': postedDate,
      'postedTime': postedTime,
      'videos': videos,
      'subscribedStudents': subscribedStudents,
    };
  }

  factory RecordedCoursesData.fromMap(Map<String, dynamic> map) {
    return RecordedCoursesData(
        id: map['id'] as String,
        courseName: map['courseName'] as String,
        facultie: map['facultie'] as String,
        courseId: map['courseId'] as String,
        categoryId: map['categoryId'] as String,
        courseFee: map['courseFee'] as num,
        duration: map['duration'] as num,
        postedDate: map['postedDate'] as int,
        postedTime: map['postedTime'] as int,
        videos: List<String>.from((map['videos'] as List<dynamic>)),
        subscribedStudents: List<String>.from(
          (map['subscribedStudents'] as List<dynamic>),
        ));
  }

  String toJson() => json.encode(toMap());

  factory RecordedCoursesData.fromJson(String source) =>
      RecordedCoursesData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'RecordedCoursesData(id: $id, courseName: $courseName, facultie: $facultie, courseId: $courseId, categoryId: $categoryId, courseFee: $courseFee, duration: $duration, postedDate: $postedDate, postedTime: $postedTime, videos: $videos, subscribedStudents: $subscribedStudents)';
  }

  @override
  bool operator ==(covariant RecordedCoursesData other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.courseName == courseName &&
        other.facultie == facultie &&
        other.courseId == courseId &&
        other.categoryId == categoryId &&
        other.courseFee == courseFee &&
        other.duration == duration &&
        other.postedDate == postedDate &&
        other.postedTime == postedTime &&
        listEquals(other.videos, videos) &&
        listEquals(other.subscribedStudents, subscribedStudents);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        courseName.hashCode ^
        facultie.hashCode ^
        courseId.hashCode ^
        categoryId.hashCode ^
        courseFee.hashCode ^
        duration.hashCode ^
        postedDate.hashCode ^
        postedTime.hashCode ^
        videos.hashCode ^
        subscribedStudents.hashCode;
  }
}
