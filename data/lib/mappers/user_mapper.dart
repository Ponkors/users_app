import 'package:data/entity/user_entity.dart';
import 'package:domain/domain.dart';

abstract class UserMapper {
  static UserEntity toEntity(UserModel model) {
    return UserEntity(
      id: model.id,
      name: model.name,
      userName: model.userName,
      email: model.email,
      phone: model.phone,
      company: model.company,
      address: model.address,
    );
  }

  static UserModel toModel(UserEntity entity) {
    return UserModel(
      id: entity.id,
      name: entity.name,
      userName: entity.userName,
      email: entity.email,
      phone: entity.phone,
      company: entity.company,
      address: entity.address,
    );
  }
}
