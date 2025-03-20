import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/helper/spacing.dart';
import 'package:salam_hack/core/router/routes.dart';
import 'package:salam_hack/core/widgets/loading.dart';
import 'package:salam_hack/features/dashboard/logic/cubit/home_cubit.dart';
import 'package:salam_hack/features/dashboard/logic/cubit/home_state.dart';
import 'package:salam_hack/features/dashboard/presentation/widgets/saftey_check_dialog.dart';

class Dashboarde extends StatefulWidget {
  const Dashboarde({super.key});

  @override
  State<Dashboarde> createState() => _DashboardeState();
}

class _DashboardeState extends State<Dashboarde> {
  @override
  void initState() {
    context.read<HomeCubit>().emitLoadUserData();
   // context.read<HomeCubit>().emitSafetyCheck();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(Routes.notificationsScreen);
            },
            icon: Icon(
              Icons.notifications_none,
            ),
          ),
          horizontalPadding(
            5,
          ),
          IconButton(
            onPressed: () {
              context.read<HomeCubit>().logout();
              Navigator.of(context).pushReplacementNamed(Routes.loginScreen);
            },
            icon: Icon(
              Icons.logout_outlined,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body:  BlocConsumer<HomeCubit, HomeState>(
        listener: (context, state) {
          if(state is Succuss){
            //showSafetyCheckDialog(context, '');
          }
        },
          builder: (context, state) {
       //     if(state is Succuss){
          return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // padding: const EdgeInsets.all(20.0),
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Column(children: [
                                MaterialButton(
                                  height: 100,
                                  minWidth: 100,
                                  color: Color.fromARGB(255, 11, 145, 255),
                                  onPressed: () {
                                    Navigator.of(context)
                                        .pushNamed(Routes.postsScreen);
                                    // Navigator.of(context).push(MaterialPageRoute(
                                    //     builder: (context) => Posts()));
                                  },
                                  child: const Icon(
                                    (Icons.comment_rounded),
                                    size: 80,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Posts',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.black),
                                )
                              ]),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20.0)),
                              ),
                              child: Column(children: [
                                MaterialButton(
                                  height: 100,
                                  minWidth: 100,
                                  color:
                                      const Color.fromARGB(255, 11, 145, 255),
                                  onPressed: () {
                                    // Navigator.of(context).push(MaterialPageRoute(
                                    //     builder: (context) => Shoulter()));
                                  },
                                  child: const Icon(
                                    Icons.home_rounded,
                                    size: 80,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Shelter',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.black),
                                )
                              ]),
                            ),
                          ]),
                      SizedBox(
                        height: 20.0,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(60.0)),
                              ),
                              child: Column(children: [
                                MaterialButton(
                                  height: 100,
                                  minWidth: 100,
                                  color:
                                      const Color.fromARGB(255, 11, 145, 255),
                                  onPressed: () {
                                    // Navigator.of(context).push(MaterialPageRoute(
                                    //     builder: (context) => AddCrisis()));
                                    Navigator.of(context)
                                        .pushNamed(Routes.crisisScreen);
                                  },
                                  child: const Icon(
                                    Icons.warning_amber_rounded,
                                    size: 80,
                                    color: Colors.amber,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Crisis',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.black),
                                )
                              ]),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Column(children: [
                                MaterialButton(
                                  height: 100,
                                  minWidth: 100,
                                  color:
                                      const Color.fromARGB(255, 11, 145, 255),
                                  onPressed: () {
                                    // Navigator.of(context).push(MaterialPageRoute(
                                    //     builder: (context) => Login()));
                                    Navigator.of(context).pushNamed(Routes.profileScreen);
                                  },
                                  child: const Icon(
                                    Icons.person_rounded,
                                    size: 80,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                const Text(
                                  'Profile',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30,
                                      color: Colors.black),
                                )
                              ]),
                            )
                          ])
                    ],
                  ),
                ),
              ]);
          // //  }
          //   else if(state is Error){
          //      setupError(state.message);
          //   }
          //   return LoadingPage();
        },
      ),
    );
  }
  Widget setupError(String message) {
    return Center(child: Text('Error $message'));
  }
}
