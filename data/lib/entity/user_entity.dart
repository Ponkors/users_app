import 'package:core/core.dart';

class UserEntity {
  final String id;
  final String name;
  final String userName;
  final String email;
  final String phone;
  final String company;
  final List<String>? address;

  UserEntity({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.phone,
    required this.company,
    required this.address,
  });

  List<Object?> get props => [
        id,
        name,
        userName,
        email,
        phone,
        company,
        address,
      ];

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'userName': userName,
      'email': email,
      'phone': phone,
      'company': company,
      'address': address,
    };
  }

  factory UserEntity.fromJson(Map<String, dynamic> json) {
    return UserEntity(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      userName: json['userName'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      company: json['company'] ?? '',
      address: List<String>.from(json['address'] ?? []),
    );
  }

  // factory UserEntity.fromFirebase(
  //   DocumentSnapshot<Map<String, dynamic>> document,
  // ) {
  //   final Map<String, dynamic> data = document.data() as Map<String, dynamic>;
  //   return UserEntity.fromJson(data);
  // }
}
