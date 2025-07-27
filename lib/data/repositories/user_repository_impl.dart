

import 'package:users_test/datasources/user_remote_datasource.dart';
import 'package:users_test/domain/entities/user.dart';
import 'package:users_test/domain/repositories/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDatasource remote;

  UserRepositoryImpl(this.remote);

  @override
  Future<List<User>> getUsers() async {
    final models = await remote.fetchUsers();
    return models.map((m) => User(id: m.id, name: m.name, email: m.email, phone: m.phone)).toList();
  }
}
