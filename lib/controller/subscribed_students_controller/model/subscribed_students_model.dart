// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class SubscribedStudentsModel {
  final String uid;

  final String studentname;

  final String email;
  final String phonenumber;

  final String joindate;
  SubscribedStudentsModel({
    required this.uid,
    required this.studentname,
    required this.email,
    required this.phonenumber,
    required this.joindate,
  });

  SubscribedStudentsModel copyWith({
    String? uid,
    String? studentname,
    String? email,
    String? phonenumber,
    String? joindate,
  }) {
    return SubscribedStudentsModel(
      uid: uid ?? this.uid,
      studentname: studentname ?? this.studentname,
      email: email ?? this.email,
      phonenumber: phonenumber ?? this.phonenumber,
      joindate: joindate ?? this.joindate,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'studentname': studentname,
      'email': email,
      'phonenumber': phonenumber,
      'joindate': joindate,
    };
  }

  factory SubscribedStudentsModel.fromMap(Map<String, dynamic> map) {
    return SubscribedStudentsModel(
      uid: map['uid'] as String,
      studentname: map['studentname'] as String,
      email: map['email'] as String,
      phonenumber: map['phonenumber'] as String,
      joindate: map['joindate'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory SubscribedStudentsModel.fromJson(String source) => SubscribedStudentsModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'SubscribedStudentsModel(uid: $uid, studentname: $studentname, email: $email, phonenumber: $phonenumber, joindate: $joindate)';
  }

  @override
  bool operator ==(covariant SubscribedStudentsModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.uid == uid &&
      other.studentname == studentname &&
      other.email == email &&
      other.phonenumber == phonenumber &&
      other.joindate == joindate;
  }

  @override
  int get hashCode {
    return uid.hashCode ^
      studentname.hashCode ^
      email.hashCode ^
      phonenumber.hashCode ^
      joindate.hashCode;
  }
}
