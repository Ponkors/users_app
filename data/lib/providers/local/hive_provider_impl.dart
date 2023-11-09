// import 'package:core/core.dart';
// import 'package:data/data.dart';
// import 'package:data/entity/user_entity.dart';
// import 'package:data/mappers/user_mapper.dart';
// import 'package:data/providers/local/hive_provider.dart';
// import 'package:domain/domain.dart';

// class HiveProviderImpl implements HiveProvider {
//   @override
//   Future<void> saveUsersToCache(List<UserModel> users) async {
//     final Box<UserEntity> usersBox = await Hive.openBox('users');
//     final List<UserEntity> usersEntity = users
//         .map(
//           (UserModel user) => UserMapper.toEntity(user),
//         )
//         .toList();
//     if (usersBox.isEmpty) {
//       await usersBox.addAll(usersEntity);
//     } else {
//       await usersBox.clear();
//       await usersBox.addAll(usersEntity);
//     }
//   }

//   @override
//   Future<List<UserEntity>> getCachedUsers() async {
//     final Box<UserEntity> usersBox = await Hive.openBox('users');
//     final List<UserEntity> usersEntity = usersBox.values.toList();
//     return usersEntity;
//   }
// }
