import 'package:flutter/cupertino.dart';

class User {
  String email;
  String pathAvatar;

  static final String _emailKey = 'email';
  static final String _pathAvatarKey = 'pathAvatar';

  User({@required this.email, @required this.pathAvatar});

  User.fromJson(Map<String, dynamic> json)
      : email = json[_emailKey],
        pathAvatar = json[_pathAvatarKey];

  Map<String, dynamic> toJson() => {
        _emailKey: email,
        _pathAvatarKey: pathAvatar,
      };
}
