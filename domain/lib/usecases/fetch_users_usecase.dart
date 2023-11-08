import 'package:domain/domain.dart';

class FetchAllUsersUseCase implements FutureUseCase<NoParams, List<UserModel>> {
  final UsersRepository _usersRepository;

  const FetchAllUsersUseCase({
    required UsersRepository usersRepository,
  }) : _usersRepository = usersRepository;

  @override
  Future<List<UserModel>> execute(NoParams input) async {
    return _usersRepository.fetchAllUsers();
  }
}
