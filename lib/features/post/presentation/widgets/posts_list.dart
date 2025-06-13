import 'package:flutter/material.dart';
import 'package:salam_hack/features/post/data/models/post_response.dart';
import 'package:salam_hack/features/post/presentation/widgets/post_card.dart';

class PostsList extends StatelessWidget {
  List<PostResponse> posts;
  PostsList({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: posts.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: PostCard(
            title: posts[index].enhancedDescription,
            location: posts[index].city,
            priority: posts[index].urgency,
            type: posts[index].type,
            userName: posts[index].username,
            timeAgo: "",
            id: posts[index].id,
          ),
          // CustomCardInfo(
          //   isPost: true,
          //   priority: posts[index].urgency,
          //   title: posts[index].type,
          //   description: posts[index].description,
          //   username: posts[index].user?.username,
          // ),
        );
      },
    );
  }
}


