import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/models/clspost.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/models/post.dart';
import '../../data/repo/home_repo.dart';
import 'home_state.dart';
import '../../../../main.dart';



class HomeCubit extends Cubit<HomeState> {
  final HomeRepo homeRepo;
  HomeCubit({required this.homeRepo}) : super(HomeState.initial());

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController typeController = TextEditingController();
  String myStatus = 'pending';
  String myUrgency = 'low';

  List<Post>? myPosts;

 //User? currentUser;


  void getCurrentUser()async{
    var response =await homeRepo.currentUser();
    response.when(success: (user){
        currentUser = user;
       // print('CurrentUser name: ${currentUser?.username}');
    }, failure: (error){
          emit(HomeState.error(error: error.message?? ''));
    });
  }

  void emitPostsListLoadedState()async{
    emit(HomeState.loading());
    var response = await homeRepo.getAllPosts();
    response.when(
      success: (posts)async{
        emit(HomeState.posts(posts.reversed));
      },
       failure: (error){
          emit(HomeState.error(error: error.message?? ''));
       });
  }

  void emitAddNewPost()async{
      emit(HomeState.loading());
     var newPost =  ClsPostRequest(
      userId: currentUser!.userId!,
        title: titleController.text,
        description: descriptionController.text,
        type: typeController.text,
        location: locationController.text,
        quantity: int.tryParse(quantityController.text)?? 0,
        status: myStatus,
        urgency: myUrgency,
        contactInfo: phoneController.text,
        photoUrl: myImage
      );
    var response = await homeRepo.addNewPost(newPost);
     response.when(
      success: (posts)async{
        emit(HomeState.addNewPost(posts));
     //   myPosts?.insert(0, newPost);
        //emit(HomeState.loading());
      //  emit(HomeState.addNewPost(myPosts));
      },
       failure: (error){
          emit(HomeState.error(error: error.message?? ''));
       });
  }

  void logout()async{
        await SharedPrefHelper.clearAllSecuredData();
  }
}
