// import 'package:core/core.dart';
// import 'package:data/data.dart';
// import 'package:data/entity/user_entity.dart';

// class DishEntityAdapter extends TypeAdapter<UserEntity> {
//   @override
//   final typeId = 0;

//   @override
//   UserEntity read(BinaryReader reader) {
//     final fieldsCount = reader.readByte();
//     Map<String, dynamic> data = {};
//     for (int i = 0; i < fieldsCount; i++) {
//       final key = reader.readString();
//       final value = reader.read();
//       data[key] = value;
//     }
//     return UserEntity(
//       id: data['id'] ?? '',
//       name: data['name'] ?? '',
//       userName: data['userName'] ?? '',
//       email: data['email'] ?? '',
//       phone: data['phone'] ?? '',
//       company: data['company'] ?? '',
//       address: List<String>.from(data['address'] ?? []),
//     );
//   }

//   @override
//   void write(BinaryWriter writer, UserEntity obj) {
//     writer.writeByte(7);
//     writer.writeString('id');
//     writer.write(obj.id);
//     writer.writeString('name');
//     writer.write(obj.name);
//     writer.writeString('userName');
//     writer.write(obj.userName);
//     writer.writeString('email');
//     writer.write(obj.email);
//     writer.writeString('phone');
//     writer.write(obj.phone);
//     writer.writeString('company');
//     writer.write(obj.company);
//     writer.writeString('address');
//     writer.write(obj.address);
//   }
// }
