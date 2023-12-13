// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FolderModel {
  String id;
  String folderName;
  String categoryId;
  String courseId;
  String position;
  FolderModel({
    required this.id,
    required this.folderName,
    required this.categoryId,
    required this.courseId,
    required this.position,
  });

  FolderModel copyWith({
    String? id,
    String? folderName,
    String? categoryId,
    String? courseId,
    String? position,
  }) {
    return FolderModel(
      id: id ?? this.id,
      folderName: folderName ?? this.folderName,
      categoryId: categoryId ?? this.categoryId,
      courseId: courseId ?? this.courseId,
      position: position ?? this.position,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'folderName': folderName,
      'categoryId': categoryId,
      'courseId': courseId,
      'position': position,
    };
  }

  factory FolderModel.fromMap(Map<String, dynamic> map) {
    return FolderModel(
      id: map['id'] as String,
      folderName: map['folderName'] as String,
      categoryId: map['categoryId'] as String,
      courseId: map['courseId'] as String,
      position: map['position'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FolderModel.fromJson(String source) =>
      FolderModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FolderModel(id: $id, folderName: $folderName, categoryId: $categoryId, courseId: $courseId, position: $position)';
  }

  @override
  bool operator ==(covariant FolderModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.folderName == folderName &&
      other.categoryId == categoryId &&
      other.courseId == courseId &&
      other.position == position;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      folderName.hashCode ^
      categoryId.hashCode ^
      courseId.hashCode ^
      position.hashCode;
  }
}
