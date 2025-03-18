import 'package:flutter/material.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/features/post/presentation/widgets/home_drawer.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/themes/styles.dart';
import '../widgets/crisis_bloc_builder.dart';

class CrisisPage extends StatelessWidget {
  const CrisisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Crisis Alerts',
          style: TextStyles.font20RedBold.copyWith(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        // Colors.white,
        // iconTheme: IconThemeData(color: Color(0xff4B5563)),
     
        elevation: 4,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: HomeDrawer(),
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 15,
          ),
          child:
          //  ListView(
          //   children: [
          //     CrisisCard(),
          //     CrisisCard(),
          //   ],
          // )
          CrisisBlocBuilder(),
          ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(right: 10,bottom: 40),
        child: FloatingActionButton(
          backgroundColor: AppColors.primaryBlue,
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context)=> AddCrisisScreen())
             
            // );
        
            Navigator.of(context).pushNamed(Routes.addCrisisScreen);
            // //Navigator.of(context).pushNamed(Routes.addPostScreen);
            // // showCupertinoDialog(
            // //   context: context,
            // //   builder: (context) => SwitchDialog(
            // //     title: 'Mark Crisis as resolved',
            // //     description: '',
            // //     initialValue: true,
            // //     onSave: (bool){
        
            // //     },
            // //   ),
            // );
          },
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
    );
  }
}
