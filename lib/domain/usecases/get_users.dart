import 'package:users_test/domain/entities/user.dart';
import 'package:users_test/domain/repositories/user_repository.dart';

class GetUsers {
  final UserRepository repository;

  GetUsers(this.repository);

  Future<List<User>> call() => repository.getUsers();
}