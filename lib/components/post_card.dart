import 'package:flutter/material.dart';
import 'package:thrift_shop/models/post.dart';

class PostCard extends StatelessWidget {
  final Post post;
  const PostCard({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.surface);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //TODO:Add circleAvatar
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(post
                  .profileImageUrl), //displays the profile image or user avatar in a circular shape
            ),
            //TODO:Add spacing
            const SizedBox(
              width: 16.0,
            ),
            //TODO:Add expanded widget
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,//horizontally aligns the widget to the left size
                children: [
                  Text(
                    post.comment,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: textTheme.titleMedium,
                  ),
                  Text(
                    '${post.timestamp} mins ago',
                    style: textTheme.bodyMedium,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
