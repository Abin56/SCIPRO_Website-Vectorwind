// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CourseModel {
  String id;
  String courseName;
  String facultyName;
  String categoryId;
  num courseFee;
  int createdDate;
  int position;
  int duration;
  CourseModel({
    required this.id,
    required this.courseName,
    required this.facultyName,
    required this.categoryId,
    required this.courseFee,
    required this.createdDate,
    required this.position,
    required this.duration,
  });

  CourseModel copyWith({
    String? id,
    String? courseName,
    String? facultyName,
    String? categoryId,
    num? courseFee,
    int? createdDate,
    int? position,
    int? duration,
  }) {
    return CourseModel(
      id: id ?? this.id,
      courseName: courseName ?? this.courseName,
      facultyName: facultyName ?? this.facultyName,
      categoryId: categoryId ?? this.categoryId,
      courseFee: courseFee ?? this.courseFee,
      createdDate: createdDate ?? this.createdDate,
      position: position ?? this.position,
      duration: duration ?? this.duration,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'courseName': courseName,
      'facultyName': facultyName,
      'categoryId': categoryId,
      'courseFee': courseFee,
      'createdDate': createdDate,
      'position': position,
      'duration': duration,
    };
  }

  factory CourseModel.fromMap(Map<String, dynamic> map) {
    return CourseModel(
      id: map['id'] as String,
      courseName: map['courseName'] as String,
      facultyName: map['facultyName'] as String,
      categoryId: map['categoryId'] as String,
      courseFee: map['courseFee'] as num,
      createdDate: map['createdDate'] as int,
      position: map['position'] as int,
      duration: map['duration'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory CourseModel.fromJson(String source) =>
      CourseModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CourseModel(id: $id, courseName: $courseName, facultyName: $facultyName, categoryId: $categoryId, courseFee: $courseFee, createdDate: $createdDate, position: $position, duration: $duration)';
  }

  @override
  bool operator ==(covariant CourseModel other) {
    if (identical(this, other)) return true;

    return other.id == id &&
        other.courseName == courseName &&
        other.facultyName == facultyName &&
        other.categoryId == categoryId &&
        other.courseFee == courseFee &&
        other.createdDate == createdDate &&
        other.position == position &&
        other.duration == duration;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        courseName.hashCode ^
        facultyName.hashCode ^
        categoryId.hashCode ^
        courseFee.hashCode ^
        createdDate.hashCode ^
        position.hashCode ^
        duration.hashCode;
  }
}
