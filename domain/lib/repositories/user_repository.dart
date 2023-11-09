import 'package:core/core.dart';
import 'package:data/data.dart';

abstract class UsersRepository {
  Future<DataState<List<UserModel>>> getUsers();
}
