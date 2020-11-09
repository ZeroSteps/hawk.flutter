import 'dart:convert';

import 'package:codex_hawk/model/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserSharedPreferences {
  static final _userStorageKey = 'user_preference_key';

  Stream<User> get getUser {
    String userJson;
    return SharedPreferences.getInstance().asStream().map((pref) {
      userJson = pref.getString(_userStorageKey);
      if (userJson == null) {
        return null;
      }
      return User.fromJson(jsonDecode(userJson));
    });
  }
}
