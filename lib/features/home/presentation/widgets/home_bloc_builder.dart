

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/widgets/loading.dart';
import 'package:salam_hack/features/home/logic/cubit/home_cubit.dart';
import 'package:salam_hack/features/home/logic/cubit/home_state.dart';
import 'package:salam_hack/features/home/presentation/widgets/posts_list.dart';

class HomeBlocBuilder extends StatefulWidget {
  const HomeBlocBuilder({super.key});

  @override
  State<HomeBlocBuilder> createState() => _HomeBlocBuilderState();
}

class _HomeBlocBuilderState extends State<HomeBlocBuilder> {

  @override
  void initState() {
    context.read<HomeCubit>().emitPostsListLoadedState();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context,state){

      if(state is Posts){
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