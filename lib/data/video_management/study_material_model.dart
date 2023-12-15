// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class StudyMaterial {
  String id;
  String pdfUrl;
  String pdfName;
  String position;
  String categoryId;
  String courseId;
  String folderId;
  StudyMaterial({
    required this.id,
    required this.pdfUrl,
    required this.pdfName,
    required this.position,
    required this.categoryId,
    required this.courseId,
    required this.folderId,
  });


  StudyMaterial copyWith({
    String? id,
    String? pdfUrl,
    String? pdfName,
    String? position,
    String? categoryId,
    String? courseId,
    String? folderId,
  }) {
    return StudyMaterial(
      id: id ?? this.id,
      pdfUrl: pdfUrl ?? this.pdfUrl,
      pdfName: pdfName ?? this.pdfName,
      position: position ?? this.position,
      categoryId: categoryId ?? this.categoryId,
      courseId: courseId ?? this.courseId,
      folderId: folderId ?? this.folderId,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'pdfUrl': pdfUrl,
      'pdfName': pdfName,
      'position': position,
      'categoryId': categoryId,
      'courseId': courseId,
      'folderId': folderId,
    };
  }

  factory StudyMaterial.fromMap(Map<String, dynamic> map) {
    return StudyMaterial(
      id: map['id'] as String,
      pdfUrl: map['pdfUrl'] as String,
      pdfName: map['pdfName'] as String,
      position: map['position'] as String,
      categoryId: map['categoryId'] as String,
      courseId: map['courseId'] as String,
      folderId: map['folderId'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory StudyMaterial.fromJson(String source) => StudyMaterial.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'StudyMaterial(id: $id, pdfUrl: $pdfUrl, pdfName: $pdfName, position: $position, categoryId: $categoryId, courseId: $courseId, folderId: $folderId)';
  }

  @override
  bool operator ==(covariant StudyMaterial other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.pdfUrl == pdfUrl &&
      other.pdfName == pdfName &&
      other.position == position &&
      other.categoryId == categoryId &&
      other.courseId == courseId &&
      other.folderId == folderId;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      pdfUrl.hashCode ^
      pdfName.hashCode ^
      position.hashCode ^
      categoryId.hashCode ^
      courseId.hashCode ^
      folderId.hashCode;
  }
}
