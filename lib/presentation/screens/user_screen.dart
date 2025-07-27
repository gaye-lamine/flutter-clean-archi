

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:users_test/presentation/providers/user_provider.dart';
import 'package:users_test/presentation/widgets/user_tile.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<UserProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text("Utilisateurs")),
      body: provider.loading
          ? const Center(child: CircularProgressIndicator())
          : provider.error != null
              ? Center(child: Text("Erreur : ${provider.error}"))
              : ListView.builder(
                  itemCount: provider.users.length,
                  itemBuilder: (_, index) =>
                      UserTile(user: provider.users[index]),
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => provider.fetch(),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
