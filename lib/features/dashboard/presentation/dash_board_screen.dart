import 'package:flutter/material.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
         style: TextStyles.font20RedBold.copyWith(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          width: 250,
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: [
              _buildDashboardButton(
                icon: Icons.article,
                label: "Posts",
                color: Colors.blue,
                onTap: () {},
              ),
              _buildDashboardButton(
                icon: Icons.home,
                label: "Shelters",
                color: Colors.blue,
                onTap: () {},
              ),
              _buildDashboardButton(
                icon: Icons.warning,
                label: "Crisis",
                color: Colors.blue,
                iconColor: Colors.amber,
                onTap: () {},
              ),
              _buildDashboardButton(
                icon: Icons.person,
                label: "Profile",
                color: Colors.blue,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDashboardButton({
    required IconData icon,
    required String label,
    required Color color,
    Color? iconColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Ink(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: iconColor ?? Colors.white),
            SizedBox(height: 5),
            Text(
              label,
              style:  TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.moreDarkBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}