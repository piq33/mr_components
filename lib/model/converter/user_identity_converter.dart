import 'package:components/model/auth_model.dart';
import 'package:json_annotation/json_annotation.dart';

class UserIdentityJsonConverter implements JsonConverter<UserIdentity, String> {
  const UserIdentityJsonConverter();

  @override
  UserIdentity fromJson(String json) {
    switch (json) {
      case 'teacher':
        return UserIdentity.teacher;
      case 'parent':
        return UserIdentity.parent;
      case 'visitor':
        return UserIdentity.visitor;
      default:
        return UserIdentity.invalidate;
    }
  }

  @override
  String toJson(UserIdentity identity) {
    switch (identity) {
      case UserIdentity.teacher:
        return 'teacher';
      case UserIdentity.parent:
        return 'parent';
      case UserIdentity.visitor:
        return 'visitor';
      default:
        return '';
    }
  }
}

class UserIdentityNullableJsonConverter
    implements JsonConverter<UserIdentity?, String?> {
  const UserIdentityNullableJsonConverter();

  @override
  UserIdentity? fromJson(String? json) {
    switch (json) {
      case 'teacher':
        return UserIdentity.teacher;
      case 'parent':
        return UserIdentity.parent;
      case 'visitor':
        return UserIdentity.visitor;
      default:
        return UserIdentity.invalidate;
    }
  }

  @override
  String? toJson(UserIdentity? identity) {
    switch (identity) {
      case UserIdentity.teacher:
        return 'teacher';
      case UserIdentity.parent:
        return 'parent';
      case UserIdentity.visitor:
        return 'visitor';
      default:
        return '';
    }
  }
}
