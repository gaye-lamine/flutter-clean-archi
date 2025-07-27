

import 'package:flutter/material.dart';
import 'package:users_test/domain/entities/user.dart';
import 'package:users_test/domain/usecases/get_users.dart';

class UserProvider with ChangeNotifier {
  final GetUsers getUsers;

  UserProvider(this.getUsers);

  List<User> _users = [];
  bool _loading = false;
  String? _error;

  List<User> get users => _users;
  bool get loading => _loading;
  String? get error => _error;

  Future<void> fetch() async {
    _loading = true;
    notifyListeners();
    try {
      _users = await getUsers();
    } catch (e) {
      _error = e.toString();
    }
    _loading = false;
    notifyListeners();
  }
}
