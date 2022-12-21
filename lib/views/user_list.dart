import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user.tile.dart';
import 'package:flutter_crud/data/dummy_users.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final users = {...DUMMY_USERS};

    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de usuários'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {}, 
          )
        ],
      ),

      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) => UserTile(users.values.elementAt(index)),
      ),
    );
  }
}