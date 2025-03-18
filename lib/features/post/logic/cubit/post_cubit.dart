import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:salam_hack/core/models/clspost.dart';
import 'package:salam_hack/features/post/data/models/post_request_body.dart';
import '../../../../core/helper/shared_pref_helper.dart';
import '../../../../core/models/post.dart';
import '../../data/repo/post_repo.dart';
import 'post_state.dart';
import '../../../../main.dart';

class PostCubit extends Cubit<PostState> {
  final PostRepo homeRepo;
  PostCubit({required this.homeRepo}) : super(PostState.initial());

  TextEditingController titleController = TextEditingController();
  TextEditingController userDescriptionController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String myStatus = 'pending';
  String myUrgency = 'low';
  String myType = 'offer';

  List<Post>? myPosts;

  void emitPostsListLoadedState() async {
    emit(PostState.loading());
    var response = await homeRepo.getAllPosts();
    response.when(success: (posts) async {
      emit(PostState.posts(posts.reversed.toList()));
    }, failure: (error) {
      emit(PostState.error(error: error.message ?? ''));
    });
  }

  void emitAddNewPost() async {
    emit(PostState.loading());
    var response = await homeRepo.createNewPost(
      PostRequestBody(
        userDescription: userDescriptionController.text,
        type: myType,
        status: myStatus,
        urgency: myUrgency,
        phoneNumber: phoneController.text,
        city: locationController.text,
      ),
    );

    response.when(
      success: (postResponse) {
        emit(addNewPost(postResponse));
      },
      failure: (error) {
        emit(PostState.error(error: error.message ?? ''));
      },
    );
  }

  void emitMatchPost() async {
    emit(PostState.loading());
    var response = await homeRepo.matchPost();

    response.when(
      success: (result) {
        emit(Match(result));
      },
      failure: (error) {
        emit(PostState.error(error: error.message ?? ''));
      },
    );
  }

  void emitMarkPostAsDone(String id) async {
     emit(PostState.loading());
    var response = await homeRepo.markPostAsDone(id);

    response.when(
      success: (postResponse) {
        emit(MarkAsDone(postResponse));
      },
      failure: (error) {
        emit(PostState.error(error: error.message ?? ''));
      },
    );
  }

  // void emitAddNewPost()async{
  //     emit(PostState.loading());
  //    var newPost =  ClsPostRequest(
  //     userId: currentUser!.userId!,
  //       title: titleController.text,
  //       description: descriptionController.text,
  //       type: typeController.text,
  //       location: locationController.text,
  //       quantity: int.tryParse(quantityController.text)?? 0,
  //       status: myStatus,
  //       urgency: myUrgency,
  //       contactInfo: phoneController.text,
  //       photoUrl: myImage
  //     );
  //   var response = await homeRepo.addNewPost(newPost);
  //    response.when(
  //     success: (posts)async{
  //       emit(PostState.addNewPost(posts));
  //    //   myPosts?.insert(0, newPost);
  //       //emit(HomeState.loading());
  //     //  emit(HomeState.addNewPost(myPosts));
  //     },
  //      failure: (error){
  //         emit(PostState.error(error: error.message?? ''));
  //      });
  // }

  void logout() async {
    await SharedPrefHelper.clearAllSecuredData();
  }
}
