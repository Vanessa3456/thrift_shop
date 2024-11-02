import 'package:flutter/material.dart';
import 'package:thrift_shop/models/shop.dart';
import 'package:thrift_shop/screens/shop_page.dart';

class ShopCard extends StatefulWidget {
  final Shop shop;
  const ShopCard({super.key, required this.shop});

  @override
  State<ShopCard> createState() => _ShopCardState();
}

class _ShopCardState extends State<ShopCard> {
  //TODO:Add _isFavorited property
  bool _isFavorited = false;
  bool _isliked = false;
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //TODO:Add image

          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(8.0)),
            child: AspectRatio(
              aspectRatio: 2,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    widget.shop.image,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 4.0,
                    right: 4.0,
                    child: IconButton(
                      icon: Icon(
                        _isFavorited
                            ? Icons.favorite //
                            : Icons.favorite_border,
                      ),
                      iconSize: 30.0,
                      color: Colors.red[400],
                      onPressed: () {
                        setState(() {
                          _isFavorited = !_isFavorited;
                        });
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 4.0,
                    right: 4.0,
                    child: IconButton(
                      icon: Icon(
                        _isliked
                            ? Icons.thumb_up //
                            : Icons.thumb_up_outlined,
                      ),
                      iconSize: 30.0,
                      color: Colors.blue[400],
                      onPressed: () {
                        setState(() {
                          _isliked = !_isliked;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          //TODO:Add listile
          ListTile(
// 1
            title: Text(
              widget.shop.name,
              style: textTheme.titleSmall,
            ),

            subtitle: Text(
              widget.shop.attributes,
              maxLines: 1,
              style: textTheme.bodySmall,
            ),

            onTap: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: 
              (context)=>
              ShopPage(shop: widget.shop)));

            }
          ),
        ],
      ),
    );
  }
}
