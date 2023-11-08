class UserModel {
  final String id;
  final String name;
  final String userName;
  final String email;
  final String phone;
  final String company;
  final List<String>? address;

  const UserModel({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.phone,
    required this.company,
    required this.address,
  });

  const UserModel.empty()
      : id = '',
        name = '',
        userName = '',
        email = '',
        phone = '',
        company = '',
        address = const <String>[];

  List<Object?> get props => [
        id,
        name,
        userName,
        email,
        phone,
        company,
        address,
      ];

  UserModel copyWith({
    String? id,
    String? name,
    String? userName,
    String? email,
    String? phone,
    String? company,
    List<String>? address,
  }) {
    return UserModel(
      id: id ?? this.id,
      name: name ?? this.name,
      userName: userName ?? this.userName,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      company: company ?? this.company,
      address: address ?? this.address,
    );
  }

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

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      userName: json['userName'] ?? '',
      email: json['email'] ?? '',
      phone: json['phone'] ?? '',
      company: json['company'] ?? '',
      address: List<String>.from(json['address'] ?? []),
    );
  }
}
