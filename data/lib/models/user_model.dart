import 'package:domain/domain.dart';

class UserModel extends UserEntity {
  const UserModel({
    int? id,
    String? name,
    String? userName,
    String? email,
    Address? address,
    String? phone,
    Company? company,
  });

  factory UserModel.fromJson(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'] ?? "",
      name: map['name'] ?? "",
      userName: map['userName'] ?? "",
      email: map['email'] ?? "",
      address: map['address'] ?? "",
      phone: map['phone'] ?? "",
      company: map['company'] ?? "",
    );
  }
}
