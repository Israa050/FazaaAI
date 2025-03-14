

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/widgets/loading.dart';
import '../../logic/cubit/home_cubit.dart';
import '../../logic/cubit/home_state.dart';
import 'posts_list.dart';

class HomeBlocBuilder extends StatefulWidget {
  const HomeBlocBuilder({super.key});

  @override
  State<HomeBlocBuilder> createState() => _HomeBlocBuilderState();
}

class _HomeBlocBuilderState extends State<HomeBlocBuilder> {

  @override
  void initState() {
    context.read<HomeCubit>().getCurrentUser();
    context.read<HomeCubit>().emitPostsListLoadedState();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context,state){

      if(state is Posts){
        //var postsList = context.read<HomeCubit>().myPosts;
        return PostsList(posts: state.data);
      }else if (state is Error){
        return setupError(state.error);
      }
      return LoadingPage();

    });
  }

   Widget setupError(String message) {
    return Center(child: Text('Error $message'));
  }
}