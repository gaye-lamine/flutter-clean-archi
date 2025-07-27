import 'package:users_test/core/services/api_service.dart';
import 'package:users_test/models/user_model.dart';

class UserRemoteDatasource {
  final ApiService api;
  UserRemoteDatasource(this.api);

  Future<List<UserModel>> fetchUsers() async {
    final data = await api.get('users');
    return data.map((json) => UserModel.fromJson(json)).toList();
  }


}
