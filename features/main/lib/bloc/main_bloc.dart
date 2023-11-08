import 'package:core/core.dart';
import 'package:domain/domain.dart';
import 'dart:async';

part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final FetchAllUsersUseCase _fetchAllUsersUseCase;

  MainBloc({
    required FetchAllUsersUseCase fetchAllUsersUseCase,
  })  : _fetchAllUsersUseCase = fetchAllUsersUseCase,
        super(MainState()) {
    on<InitListOfUsers>(_initUsers);
    on<LoadListOfUsers>(_loadUsers);
    on<CheckInternetConnection>(_checkInternetConnection);
    add(InitListOfUsers());

    Connectivity().onConnectivityChanged.listen((
      ConnectivityResult result,
    ) {
      add(CheckInternetConnection());
    });
  }

  Future<void> _initUsers(
    InitListOfUsers event,
    Emitter<MainState> emit,
  ) async {
    if (state.listOfUsers.isEmpty) {
      emit(
        state.copyWith(isLoading: true),
      );
      add(LoadListOfUsers());
    } else {
      emit(
        state.copyWith(isLoading: false),
      );
    }
  }

  Future<void> _loadUsers(
    LoadListOfUsers event,
    Emitter<MainState> emit,
  ) async {
    try {
      final List<UserModel> users = await _fetchAllUsersUseCase.execute(
        const NoParams(),
      );
      emit(
        state.copyWith(
          listOfUsers: users,
        ),
      );
    } on Exception catch (error) {
      emit(
        state.copyWith(exception: error),
      );
    }
  }

  Future<void> _checkInternetConnection(
    CheckInternetConnection event,
    Emitter<MainState> emit,
  ) async {
    final bool haveInternetConnection =
        await InternetConnectionInfo.checkInternetConnection();
    emit(
      state.copyWith(haveInternetConnection: haveInternetConnection),
    );
  }
}
