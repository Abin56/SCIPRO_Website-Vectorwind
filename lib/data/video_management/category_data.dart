// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoryData {
  String categoryName;
  String id;
  CategoryData({
    required this.categoryName,
    required this.id,
  });

  CategoryData copyWith({
    String? categoryName,
    String? id,
  }) {
    return CategoryData(
      categoryName: categoryName ?? this.categoryName,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoryName': categoryName,
      'id': id,
    };
  }

  factory CategoryData.fromMap(Map<String, dynamic> map) {
    return CategoryData(
      categoryName: map['categoryName'] as String,
      id: map['id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryData.fromJson(String source) =>
      CategoryData.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CategoryData(categoryName: $categoryName, id: $id)';

  @override
  bool operator ==(covariant CategoryData other) {
    if (identical(this, other)) return true;

    return other.categoryName == categoryName && other.id == id;
  }

  @override
  int get hashCode => categoryName.hashCode ^ id.hashCode;
}
