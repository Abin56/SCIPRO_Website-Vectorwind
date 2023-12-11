// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class VideoModel {
  String id;
  String videoUrl;
  String videoName;
  String position;
  String thumbnailUrl;
  String categoryId;
  String courseId;
  String folderId;
  VideoModel({
    required this.id,
    required this.videoUrl,
    required this.videoName,
    required this.position,
    required this.thumbnailUrl,
    required this.categoryId,
    required this.courseId,
    required this.folderId,
  });

  VideoModel copyWith({
    String? id,
    String? videoUrl,
    String? videoName,
    String? position,
    String? thumbnailUrl,
    String? categoryId,
    String? courseId,
    String? folderId,
  }) {
    return VideoModel(
      id: id ?? this.id,
      videoUrl: videoUrl ?? this.videoUrl,
      videoName: videoName ?? this.videoName,
      position: position ?? this.position,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      categoryId: categoryId ?? this.categoryId,
      courseId: courseId ?? this.courseId,
      folderId: folderId ?? this.folderId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'videoUrl': videoUrl,
      'videoName': videoName,
      'position': position,
      'thumbnailUrl': thumbnailUrl,
      'categoryId': categoryId,
      'courseId': courseId,
      'folderId': folderId,
    };
  }

  factory VideoModel.fromMap(Map<String, dynamic> map) {
    return VideoModel(
      id: map['id'] as String,
      videoUrl: map['videoUrl'] as String,
      videoName: map['videoName'] as String,
      position: map['position'] as String,
      thumbnailUrl: map['thumbnailUrl'] as String,
      categoryId: map['categoryId'] as String,
      courseId: map['courseId'] as String,
      folderId: map['folderId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory VideoModel.fromJson(String source) =>
      VideoModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'VideoModel(id: $id, videoUrl: $videoUrl, videoName: $videoName, position: $position, thumbnailUrl: $thumbnailUrl, categoryId: $categoryId, courseId: $courseId, folderId: $folderId)';
  }

  @override
  bool operator ==(covariant VideoModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.videoUrl == videoUrl &&
      other.videoName == videoName &&
      other.position == position &&
      other.thumbnailUrl == thumbnailUrl &&
      other.categoryId == categoryId &&
      other.courseId == courseId &&
      other.folderId == folderId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      videoUrl.hashCode ^
      videoName.hashCode ^
      position.hashCode ^
      thumbnailUrl.hashCode ^
      categoryId.hashCode ^
      courseId.hashCode ^
      folderId.hashCode;
  }
}
