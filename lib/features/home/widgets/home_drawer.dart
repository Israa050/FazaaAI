
import 'package:flutter/material.dart';

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
          ],
        ),
      );
  }

  Widget _buildDrawerHeader(){
    return DrawerHeader(
      decoration: BoxDecoration(
        color: Color(0xff1192FB),
      ),
      child: Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.white38,
          radius: 40,
          child: Icon(Icons.person,size: 50,),
        ),

        SizedBox(height: 20,),
        Text(
          'UserName',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
      ),
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