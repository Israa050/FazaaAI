
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/widgets/loading.dart';
import 'package:salam_hack/features/shelters/logic/cubit/shelter_cubit.dart';
import 'package:salam_hack/features/shelters/logic/cubit/shelter_state.dart';
import 'package:salam_hack/features/shelters/presentation/widgets/shelters_list_view.dart';

class ShetersBlocBuilder extends StatelessWidget {
  const ShetersBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShelterCubit, ShelterState>(
      buildWhen: (previous, current) =>
          current is SheltersSuccess || current is SheltersError,
      builder: (context,state){
        return state.maybeWhen(
          loaded: (shelters) {
            return SheltersListView(shelters: shelters);
          },
          error: (error) {
            return setupError(error);
          },
          orElse: () {
            return SizedBox.shrink();
          },
        );


    //   if(state is SheltersSuccess){
    //     return SheltersListView(shelters: state.data);
    //   }else if (state is SheltersError){
    //     return setupError(state.error);
    // }
    //   return LoadingPage();

    });
   }

   Widget setupError(String message) {
    return Center(child: Text('Error $message'));
  }
}