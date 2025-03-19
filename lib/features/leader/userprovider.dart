import 'package:flutter/material.dart';
import '../core/helper.dart';
import '../models/leaderboard.dart';

class UserProvider with ChangeNotifier {
  List<leadermodel> _users = [];
  final Helper _dbHelper = Helper();

  List<leadermodel> get users => _users;

  Future<List<leadermodel>> loadUsers() async {
    _users = await _dbHelper.getUsers();
    notifyListeners();
    return _users;
  }

  Future<void> addUser(leadermodel user) async {
    await _dbHelper.insertUser(user);
    await loadUsers();
  }

  Future<void> updateUser(leadermodel user) async {
    await _dbHelper.updateUser(user);
    await loadUsers();
  }

  Future<void> deleteUser(int id) async {
    await _dbHelper.deleteUser(id);
    await loadUsers();
  }

  void sortUsersByReputation() {
    _users.sort((a, b) => b.reputationPoints.compareTo(a.reputationPoints));
    notifyListeners();
  }

  void searchUsers(String query) async {
    final allUsers = await _dbHelper.getUsers();
    if (query.isEmpty) {
      _users = allUsers;
    } else {
      _users = allUsers
          .where((user) =>
              user.username.toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
    notifyListeners();
  }
}
