// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CoupenManagementModel {
  String id;
  String coupenName;
  int discount;
  int validity;
  int usage;
  int totalusage;
  String createdDate;
  bool forstudent;
  String? email;
  String coupenCode;
  CoupenManagementModel({
    required this.id,
    required this.coupenName,
    required this.discount,
    required this.validity,
    required this.usage,
    required this.totalusage,
    required this.createdDate,
    required this.forstudent,
    this.email,
    required this.coupenCode,
  });

  CoupenManagementModel copyWith({
    String? id,
    String? coupenName,
    int? discount,
    int? validity,
    int? usage,
    int? totalusage,
    String? createdDate,
    bool? forstudent,
    String? email,
    String? coupenCode,
  }) {
    return CoupenManagementModel(
      id: id ?? this.id,
      coupenName: coupenName ?? this.coupenName,
      discount: discount ?? this.discount,
      validity: validity ?? this.validity,
      usage: usage ?? this.usage,
      totalusage: totalusage ?? this.totalusage,
      createdDate: createdDate ?? this.createdDate,
      forstudent: forstudent ?? this.forstudent,
      email: email ?? this.email,
      coupenCode: coupenCode ?? this.coupenCode,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'coupenName': coupenName,
      'discount': discount,
      'validity': validity,
      'usage': usage,
      'totalusage': totalusage,
      'createdDate': createdDate,
      'forstudent': forstudent,
      'email': email,
      'coupenCode': coupenCode,
    };
  }

  factory CoupenManagementModel.fromMap(Map<String, dynamic> map) {
    return CoupenManagementModel(
      id: map['id'] as String,
      coupenName: map['coupenName'] as String,
      discount: map['discount'] as int,
      validity: map['validity'] as int,
      usage: map['usage'] as int,
      totalusage: map['totalusage'] as int,
      createdDate: map['createdDate'] as String,
      forstudent: map['forstudent'] as bool,
      email: map['email'] != null ? map['email'] as String : null,
      coupenCode: map['coupenCode'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CoupenManagementModel.fromJson(String source) =>
      CoupenManagementModel.fromMap(
          json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'CoupenManagementModel(id: $id, coupenName: $coupenName, discount: $discount, validity: $validity, usage: $usage, totalusage: $totalusage, createdDate: $createdDate, forstudent: $forstudent, email: $email, coupenCode: $coupenCode)';
  }

  @override
  bool operator ==(covariant CoupenManagementModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.coupenName == coupenName &&
      other.discount == discount &&
      other.validity == validity &&
      other.usage == usage &&
      other.totalusage == totalusage &&
      other.createdDate == createdDate &&
      other.forstudent == forstudent &&
      other.email == email &&
      other.coupenCode == coupenCode;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      coupenName.hashCode ^
      discount.hashCode ^
      validity.hashCode ^
      usage.hashCode ^
      totalusage.hashCode ^
      createdDate.hashCode ^
      forstudent.hashCode ^
      email.hashCode ^
      coupenCode.hashCode;
  }
}
