import 'package:carimua/models/user_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserNotifier extends Notifier<UserModel> {
  @override
  UserModel build() {
    return UserModel();
  }
}

final userProvider = NotifierProvider<UserNotifier, UserModel>(() {
  return UserNotifier();
});
