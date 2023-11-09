import 'package:core/core.dart';

class UserEntity extends Equatable {
  final int? id;
  final String? name;
  final String? userName;
  final String? email;
  final Address? address;
  final String? phone;
  final Company? company;

  const UserEntity({
    this.id,
    this.name,
    this.userName,
    this.email,
    this.address,
    this.phone,
    this.company,
  });

  List<Object?> get props {
    return [
      id,
      name,
      userName,
      email,
      phone,
      company,
      address,
    ];
  }
}

class Company {
  final String? name;
  final String? catchPhrase;
  final String? bs;

  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  List<Object?> get props {
    return [
      name,
      catchPhrase,
      bs,
    ];
  }
}

class Address {
  final String? street;
  final String? suite;
  final String? city;
  final String? zipcode;

  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
  });

  List<Object?> get props {
    return [
      street,
      suite,
      city,
      zipcode,
    ];
  }
}
