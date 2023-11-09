import 'package:core/core.dart';
import 'package:domain/domain.dart';

abstract class MainState extends Equatable {
  final List<UserEntity>? users;
  final DioError? error;

  const MainState({this.users, this.error});

  @override
  List<Object> get props => [users!, error!];
}

class UsersLoadingFromNetwork extends MainState {
  const UsersLoadingFromNetwork();
}

class UsersLoadingFromNetworkDone extends MainState {
  const UsersLoadingFromNetworkDone(List<UserEntity> users)
      : super(users: users);
}

class UsersLoadingFromNetworkError extends MainState {
  const UsersLoadingFromNetworkError(DioError error) : super(error: error);
}
