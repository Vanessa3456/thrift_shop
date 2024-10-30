import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:thrift_shop/components/shop_card.dart';
import 'package:thrift_shop/models/shop.dart';

class ShopsSection extends StatelessWidget {
  final List<Shop> shops;
  const ShopsSection({super.key, required this.shops});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
            child: Text(
              'Shops near me',
              style: textTheme.titleMedium,
            ),
          ),
          //TODO:add shops list view
          SizedBox(
            height: 300,
            child: ListView.builder(
              scrollDirection:Axis.horizontal,
              itemCount: shops.length,
              itemBuilder: (context,index){
                return SizedBox(
                  width: 400,
                  child:ShopCard(shop: shops[index]) ,
                );
              }
            ),
          )
        ],
      ),
    );
  }
}
