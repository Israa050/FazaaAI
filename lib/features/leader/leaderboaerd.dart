import 'package:flutter/material.dart';
//import 'package:path/path.dart';
import 'package:provider/provider.dart';
import 'package:salam/core/userprovider.dart';
import 'package:salam/models/leaderboard.dart';

class Leaderboaerd extends StatelessWidget {
  const Leaderboaerd({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    // final users = Provider.of<List<leadermodel>>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          'Leaderboard',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        )),
        actions: [
          IconButton(
              onPressed: () {
                userProvider.sortUsersByReputation();
              },
              icon: Icon(Icons.sort))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: userProvider.users.length,
                itemBuilder: (context, index) {
                  final user = userProvider.users[index];
                  final isTopOne = index == 0;
                  return Card(
                    elevation: 4.0,
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    color: isTopOne == true ? Colors.amber[100] : Colors.white,
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: user.getRankColor(),
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(color: Colors.white),
                        ),
                      ),
                      title: Text(
                        user.username,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: isTopOne ? Colors.amber[900] : Colors.blue,
                        ),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Points :${user.reputationPoints}',
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            'Rank: ${user.rank}',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          Text(
                            'Address: ${user.address}',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
