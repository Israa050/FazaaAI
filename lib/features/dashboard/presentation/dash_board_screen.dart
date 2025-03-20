import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/themes/colors.dart';
import 'package:salam_hack/core/themes/styles.dart';
import 'package:salam_hack/core/widgets/loading.dart';
import 'package:salam_hack/features/dashboard/logic/cubit/home_cubit.dart';
import 'package:salam_hack/features/dashboard/logic/cubit/home_state.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    //context.read<HomeCubit>().emitSafetyCheck();
    super.initState();
  }

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
      body: BlocListener<HomeCubit, HomeState>(
        listener: (context, state) {
          if (state is SafetyCheck) {}
        },
        child: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            if(state is Succuss){
            return Center(
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
            );
            }
            else if(state is Error){
              setupError(state.message);
            }
              return LoadingPage();
          },
        ),
      ),
    );
  }

   Widget setupError(String message) {
    return Center(child: Text('Error $message'));
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
              style: TextStyle(
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
