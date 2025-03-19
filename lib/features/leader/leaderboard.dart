import 'package:flutter/material.dart';

class leadermodel {
  final int id;
  final String username;
  final int reputationPoints;
  final String rank;
  final String address;

  leadermodel({
    required this.id,
    required this.username,
    required this.reputationPoints,
    required this.rank,
    required this.address,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': username,
      'points': reputationPoints,
      'rank': rank,
      'address': address
    };
  }

  factory leadermodel.fromMap(Map<String, dynamic> map) {
    return leadermodel(
        id: map['id'],
        username: map['name'],
        reputationPoints: map['points'],
        rank: map['rank'],
        address: map['address']);
  }

  Color getRankColor() {
    switch (rank) {
      case 'diamond':
        return const Color.fromARGB(255, 20, 101, 241);
      case 'Platinum':
        return const Color(0xFF8DBFD8);
      case 'Gold':
        return Colors.amber;
      case 'Silver':
        return const Color(0xFFC7C6C6);
      case 'Bronze':
        return Colors.brown;
      default:
        return Colors.blue;
    }
  }
}
