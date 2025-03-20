

import 'package:flutter/material.dart';

Color getRankColor(int points) {
  if (points < 50) {
    return Colors.brown; // Bronze
  } else if (points < 200) {
    return Colors.grey; // Silver
  } else if (points < 500) {
    return Colors.amber; // Gold
  } else if (points < 1000) {
    return Colors.blue; // Platinum
  } else {
    return Color(0xFF00E5FF); // Bright Cyan for Diamond (Easy to see!)
  }
}


String getRankLabel(int points) {
  if (points < 50) {
    return "Bronze";
  } else if (points < 200) {
    return "Silver";
  } else if (points < 500) {
    return "Gold";
  } else if (points < 1000) {
    return "Platinum";
  } else {
    return "Diamond";
  }
}