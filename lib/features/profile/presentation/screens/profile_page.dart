

import 'package:flutter/material.dart';
import 'package:salam_hack/core/helper/ranks.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/features/profile/data/models/profile.dart';
import 'package:salam_hack/main.dart';



class UserProfilePage extends StatelessWidget {
  //final Profile userProfile;
  final String username = "${currentUser?.username}";
  final String email = "${currentUser?.email}";
  final String phone = "${currentUser?.phoneNumber}";
  final String city = "${currentUser?.address}";
  final int reputationPoints = currentUser?.reputationPoints ?? 0;
  final int nextRankPoints = currentUser?.pointsToNextRank?? 10;
  final String rank = currentUser!.rank ?? 'Gold';
  //final Color rankColor = Colors.amber;
  final Color rankColor = getRankColor(currentUser!.reputationPoints!);
  final String nextRank = getRankLabel(currentUser!.reputationPoints! + currentUser!.pointsToNextRank!);
    int totalPointsNeeded = 1000; // Points required for Diamond Rank


   UserProfilePage({super.key,});

  @override
  Widget build(BuildContext context) {
    double progress = reputationPoints / totalPointsNeeded;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Stack(
        children: [
          // Background Gradient
          Container(
            height: 250,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.primaryBlue, AppColors.darkBlue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
          ),

          // Page Content
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                SizedBox(height: 60),
                _buildProfileCard(),
                SizedBox(height: 20),
                _buildInfoCard(),
                SizedBox(height: 20),
                _buildRankCard(progress,context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProfileCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      shadowColor: Colors.black26,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 55,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey[300],
                child: Icon(Icons.person, size: 50, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Text(
              username,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
              decoration: BoxDecoration(
                color: rankColor.withOpacity(0.2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                rank,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: rankColor),
              ),
            ),
            SizedBox(height: 10),
           
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      shadowColor: Colors.black26,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _buildInfoRow(Icons.email, "Email", email),
            _buildInfoRow(Icons.phone, "Phone", phone),
            _buildInfoRow(Icons.location_city, "City", city),
          ],
        ),
      ),
    );
  }

  Widget _buildRankCard(double progress, BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 5,
      shadowColor: Colors.black26,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Reputation Points",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              IconButton(
                icon: Icon(Icons.leaderboard, color: Colors.blue),
                onPressed: () {
                  // TODO: Navigate to leaderboard screen
                  Navigator.of(context).pushNamed(Routes.leaderboardScreen);
                  print("Leaderboard button pressed!");
                },
              ),
            ],
          ),
            Text(
              '$reputationPoints pts',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: rankColor),
            ),
            SizedBox(height: 10),
            Text(
              '${nextRankPoints} points to reach $nextRank!',
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 10),

            // Animated Progress Bar
            TweenAnimationBuilder<double>(
              tween: Tween<double>(begin: 0, end: progress),
              duration: Duration(seconds: 1), // Animation duration
              curve: Curves.easeOut,
              builder: (context, value, child) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: value,
                    minHeight: 12,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation(rankColor),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueGrey, size: 24),
          SizedBox(width: 10),
          Expanded(
            child: Text(
              "$label: $value",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}