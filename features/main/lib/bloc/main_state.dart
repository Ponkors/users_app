part of 'main_bloc.dart';

class MainState {
  final bool isLoading;
  final List<UserModel> listOfUsers;
  final bool? haveInternetConnection;
  final Object? exception;

  MainState({
    this.isLoading = true,
    this.listOfUsers = const [],
    this.haveInternetConnection,
    this.exception,
  });

  MainState copyWith({
    bool? isLoading,
    List<UserModel>? listOfUsers,
    bool? haveInternetConnection,
    Object? exception,
  }) {
    return MainState(
      isLoading: isLoading ?? this.isLoading,
      listOfUsers: listOfUsers ?? this.listOfUsers,
      haveInternetConnection:
          haveInternetConnection ?? this.haveInternetConnection,
      exception: exception ?? this.exception,
    );
  }
}
