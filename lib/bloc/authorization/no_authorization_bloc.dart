import 'package:codex_hawk/model/user.dart';
import 'package:codex_hawk/storage/user_shared_preferences.dart';
import 'package:rxdart/rxdart.dart';

class NoAuthorizationBloc {
  final _userPreferences = UserSharedPreferences();
  final _userSubject = PublishSubject<User>();

  Stream<User> get user => _userSubject.stream;
}
