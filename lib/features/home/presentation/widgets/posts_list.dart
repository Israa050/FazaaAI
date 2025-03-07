
import 'package:flutter/material.dart';
import 'package:salam_hack/core/models/post.dart';
import 'package:salam_hack/core/widgets/custom_card_info.dart';

class PostsList extends StatelessWidget {
  List<Post> posts;
  PostsList({super.key,required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomCardInfo(
            priority: posts[index].urgency,
            title: posts[index].title,
            description: posts[index].description,
            username: posts[index].user?.username,
          ),
        );
      },
    );
  }
}