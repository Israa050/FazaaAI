




import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/features/post/logic/cubit/post_cubit.dart';
import 'package:salam_hack/features/profile/logic/cubit/profile_cubit.dart';
import 'package:salam_hack/features/profile/logic/cubit/profile_state.dart';
import 'package:salam_hack/features/profile/presentation/screens/profile_page.dart';
import '../../../../core/widgets/loading.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {

  @override
  void initState() {
    //context.read<PostCubit>().getCurrentUser();
   // context.read<ProfileCubit>().emitProfileState();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: ()async {
        context.read<PostCubit>().emitPostsListLoadedState();
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<ProfileCubit, ProfileState>(builder: (context,state){
        
          if(state is Success){
            //var postsList = context.read<HomeCubit>().myPosts;
            return UserProfilePage();
          }else if (state is Error){
            return setupError(state.message);
          }
          return LoadingPage();
        
        }),
      ),
    );
  }

   Widget setupError(String message) {
    return Center(child: Text('Error $message'));
  }
}