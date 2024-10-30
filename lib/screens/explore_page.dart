import 'package:flutter/material.dart';
import 'package:thrift_shop/api/mock_shop_service.dart';
import 'package:thrift_shop/components/category_section.dart';
import 'package:thrift_shop/components/posr_section.dart';
import 'package:thrift_shop/components/shops_section.dart';
import 'package:thrift_shop/models/outfit_categories.dart';

class ExplorePage extends StatelessWidget {
  final mockService = MockShopService();
  ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO:Add listview future builder
    return FutureBuilder( 
// 2 
    future: mockService.getExploreData(), 
// 3 
    builder: (context, AsyncSnapshot<ExploreData> snapshot) { 
// 4 
if (snapshot.connectionState == ConnectionState.done) { 
// 5 
final shops = snapshot.data?.shops ?? []; 
final outfitcategories = snapshot.data?.categories ?? []; 
final posts = snapshot.data?.shopPosts ?? []; 
// TODO: Replace this with Shop Section 
//TODO:Wrap with a listview
return ListView(
  shrinkWrap: true,//sizes the listview based on its children widget
  scrollDirection: Axis.vertical,
  children: [
    ShopsSection(shops: shops),
    //TODO:Add category section
   CategorySection(categories: categories),
    //TODO:Add postsection
    PostSection(posts: posts),
  ],
);      } 
else { 
// 6 
return const Center( 
          child: CircularProgressIndicator(), 
        ); 
      } 
    }, 
  );
  }
}
