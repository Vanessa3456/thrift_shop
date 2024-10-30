import 'package:flutter/material.dart';
import 'package:thrift_shop/models/outfit_categories.dart';

class CategoryCard extends StatelessWidget {
  final OutfitCategories category;
  const CategoryCard({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    //TODO:Get the text theme
    final textTheme= Theme.of(context).textTheme.apply(displayColor: Theme.of(context).colorScheme.onSurface);//used in the text widgets
    //TODO:Replace with card widget
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //TODO:Add a stack widget
          Stack(
            children: [
              ClipRRect(//Clips the image with the rounded corners
                
                borderRadius: const BorderRadius.vertical(top: Radius.circular(8.0)),
                child: Image.asset(category.imageUrl,height: 200,),
              )
            ],),
          //TODO:Add listtile widget
          ListTile(
            title:Text (
              category.name,
              style: textTheme.titleSmall,
            ),
            subtitle: Text('${category.numberOfShops} places',
            style: textTheme.bodySmall,),
          )
        
        ],
      ),
    );
  }
}