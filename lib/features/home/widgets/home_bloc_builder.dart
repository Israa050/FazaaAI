

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/widgets/loading.dart';

class HomeBlocBuilder extends StatelessWidget {
  const HomeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(builder: (context,state){

      // if(state is lodded){

      // }else if (state is Error){

      // }

      return LoadingPage();

    });
  }

   Widget setupError() {
    return const SizedBox.shrink();
  }
}