import 'package:users_test/domain/entities/user.dart';

abstract class UserRepository {
  Future<List<User>> getUsers();
}