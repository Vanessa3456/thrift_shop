import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:thrift_shop/components/category_card.dart';
import 'package:thrift_shop/models/outfit_categories.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key, required this.categories});
  final List<OutfitCategories> categories;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
            child: Text(
              'categories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 275,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return SizedBox(
                    width: 200,
                    child: CategoryCard(category: categories[index]),
                  );
                }
                ),
          )
        ],
      ),
    );
  }
}
