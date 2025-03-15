import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/models/clspost.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/models/post.dart';
import '../../data/repo/home_repo.dart';
import 'post_state.dart';
import '../../../../main.dart';



class PostCubit extends Cubit<PostState> {
  final PostRepo homeRepo;
  PostCubit({required this.homeRepo}) : super(PostState.initial());

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
          emit(PostState.error(error: error.message?? ''));
    });
  }

  void emitPostsListLoadedState()async{
    emit(PostState.loading());
    var response = await homeRepo.getAllPosts();
    response.when(
      success: (posts)async{
        emit(PostState.posts(posts.reversed));
      },
       failure: (error){
          emit(PostState.error(error: error.message?? ''));
       });
  }

  void emitAddNewPost()async{
      emit(PostState.loading());
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
        emit(PostState.addNewPost(posts));
     //   myPosts?.insert(0, newPost);
        //emit(HomeState.loading());
      //  emit(HomeState.addNewPost(myPosts));
      },
       failure: (error){
          emit(PostState.error(error: error.message?? ''));
       });
  }

  void logout()async{
        await SharedPrefHelper.clearAllSecuredData();
  }
}
