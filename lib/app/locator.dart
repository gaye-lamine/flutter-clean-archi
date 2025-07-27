

import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:users_test/core/services/api_service.dart';
import 'package:users_test/data/repositories/user_repository_impl.dart';
import 'package:users_test/datasources/user_remote_datasource.dart';
import 'package:users_test/domain/usecases/get_users.dart';
import 'package:users_test/presentation/providers/user_provider.dart';

List<SingleChildWidget> appProviders = [
  ChangeNotifierProvider(
    create: (_) => UserProvider(
      GetUsers(
        UserRepositoryImpl(
          UserRemoteDatasource(ApiService()),
        ),
      ),
    ),
  ),
];
