part of 'main_bloc.dart';

abstract class MainEvent {
  const MainEvent();
}

class InitListOfUsers extends MainEvent {
  InitListOfUsers();
}

class LoadListOfUsers extends MainEvent {
  LoadListOfUsers();
}

class CheckInternetConnection extends MainEvent {
  CheckInternetConnection();
}
