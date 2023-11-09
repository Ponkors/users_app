import 'package:core/core.dart';
import 'package:domain/entity/user_entity.dart';
import 'package:domain/repositories/user_repository.dart';

class GetUsersUseCase implements UseCase<DataState<List<UserEntity>>, void> {
  final UsersRepository _usersRepository;

  GetUsersUseCase(this._usersRepository);

  @override
  Future<DataState<List<UserEntity>>> call({void params}) {
    return _usersRepository.getUsers();
  }
}
