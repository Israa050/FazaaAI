

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/features/post/logic/cubit/post_cubit.dart';
import '../../../../core/widgets/loading.dart';
import '../../logic/cubit/post_state.dart';
import 'posts_list.dart';

class HomeBlocBuilder extends StatefulWidget {
  const HomeBlocBuilder({super.key});

  @override
  State<HomeBlocBuilder> createState() => _HomeBlocBuilderState();
}

class _HomeBlocBuilderState extends State<HomeBlocBuilder> {

  @override
  void initState() {
    context.read<PostCubit>().getCurrentUser();
    context.read<PostCubit>().emitPostsListLoadedState();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostCubit, PostState>(builder: (context,state){

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