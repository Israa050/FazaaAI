import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/helper/ranks.dart';
import 'package:salam_hack/core/themes/styles.dart';
import 'package:salam_hack/core/widgets/loading.dart';
import 'package:salam_hack/features/profile/logic/cubit/profile_cubit.dart';
import 'package:salam_hack/features/profile/logic/cubit/profile_state.dart';

class Leaderboaerd extends StatefulWidget {
  const Leaderboaerd({super.key});

  @override
  State<Leaderboaerd> createState() => _LeaderboaerdState();
}

class _LeaderboaerdState extends State<Leaderboaerd> {
  @override
  void initState() {
    context.read<ProfileCubit>().emitLeaderBoardLoaded();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //final userProvider = Provider.of<UserProvider>(context);
    // final users = Provider.of<List<leadermodel>>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Leaderboard',
            style: TextStyles.font20RedBold.copyWith(color: Colors.black),
        )),
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //       //  userProvider.sortUsersByReputation();
        //       },
        //       icon: Icon(Icons.sort))
        // ],
      ),
      body: BlocBuilder<ProfileCubit, ProfileState>(
        builder: (context, state) {
          if(state is Success){
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Expanded(
                  child: ListView.builder(
                    itemCount: state.data.length,
                    itemBuilder: (context, index) {
                      final user = state.data[index];
                      final isTopOne = index == 0;
                      return Card(
                        elevation: 4.0,
                        margin: EdgeInsets.symmetric(vertical: 8.0),
                        color:
                            isTopOne == true ? Colors.amber[100] : Colors.white,
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundColor: getRankColor(user.reputationPoints!),
                            child: Text(
                              '${index + 1}',
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          title: Text(
                            '${user.username}',
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
                                'Points : ${user.reputationPoints}',
                                style: TextStyle(fontSize: 16),
                              ),
                              Text(
                                'Rank: ${user.rank}',
                                style:
                                    TextStyle(fontSize: 14, color: Colors.grey),
                              ),
                              // Text(
                              //   'Address: ${user.address}',
                              //   style:
                              //       TextStyle(fontSize: 14, color: Colors.grey),
                              // ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
          }
          else if(state is Error){
            setupError(state.message);
          }
          return LoadingPage();
        },
      ),
    );
  }
   Widget setupError(String message) {
    return Center(child: Text('Error $message'));
  }
}
