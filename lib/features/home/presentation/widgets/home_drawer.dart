
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/router/routes.dart';
import '../../../../core/themes/colors.dart';
import '../../logic/cubit/home_cubit.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor:Colors.white,
        child: ListView(
          children: [
            _buildDrawerHeader(),
            //TODO: I will add items after adding routes
            _buildDrawerItem(
              icon: Icons.home_rounded,
              title: 'Home',
              onTap: (){}
            ),

             _buildDrawerItem(
              icon: Icons.night_shelter,
              title: 'Shelters',
              onTap: (){
                Navigator.of(context).pushNamed(Routes.sheltersScreen);
              }
              
            ),

             _buildDrawerItem(
              icon: Icons.logout,
              title: 'Logout',
              onTap: (){
                context.read<HomeCubit>().logout();
                Navigator.of(context).pushNamed(Routes.loginScreen);
              }
              
            ),
          ],
        ),
      );
  }

  Widget _buildDrawerHeader(){
    return DrawerHeader(
      decoration: BoxDecoration(
        color: AppColors.darkBlue,
      ),
      child: null,
      //child:
      //  Column(
      // children: [
      //   CircleAvatar(
      //     backgroundColor: Colors.white38,
      //     radius: 40,
      //     child: Icon(Icons.person,size: 50,),
      //   ),

      //   SizedBox(height: 20,),
      //   Text(
      //     'UserName',
      //     style: TextStyle(
      //       color: Colors.white,
      //     ),
      //   ),
      // ],
      // ),
    );
  }

   Widget _buildDrawerItem({required IconData icon, required String title, required GestureTapCallback onTap}){
    return ListTile(
      leading: Icon(icon),
      minLeadingWidth: 5,
      title: Text(title),
      onTap: onTap,
    );  
  }

}