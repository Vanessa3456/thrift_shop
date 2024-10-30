import 'package:flutter/material.dart';
import 'package:thrift_shop/components/post_card.dart';
import 'package:thrift_shop/models/post.dart';

class PostSection extends StatelessWidget {
  final List<Post> posts;
  const PostSection({super.key,required this.posts});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
            child: Text(
              'Friends Activity',
              style: TextStyle(fontSize:24,fontWeight:  FontWeight.bold),
            ),
          ),
          //TODO:Add post listview
          ListView.separated(
            primary: false,//because you are nesting two listviews
            shrinkWrap: true,//to create a fixed length,it is were false you'd get an unbounded height error
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),//disabling the scrolling of this listview
            itemCount: posts.length,
            itemBuilder: (context,index){
              return PostCard(post: posts[index]);
            },
            separatorBuilder: (context,index){
              return const SizedBox(height: 16,);
            },
            )
        ],
      ),
    );
  }
}
