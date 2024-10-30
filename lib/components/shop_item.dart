import 'package:flutter/material.dart';
import 'package:thrift_shop/models/shoes.dart';

class ShopItem extends StatelessWidget {
  final Item item;
  const ShopItem({super.key,required this.item});

  @override
  Widget build(BuildContext context) {
    final colorSceme =Theme.of(context).colorScheme;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: _buildListItem()),
        _buildImageStack(colorScheme),

      ],


    );
  }
  Widget _buildListItem(){
    return ListTile(
      contentPadding: const EdgeInsets.all(8.0),
      title: Text(item.name),
      subtitle: _buildSubtitle(),
    );
  }

  Widget _buildSubtitle(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDescription(),
        const SizedBox(height: 4,),
        _buildPriceAndLikes(),
      ],
    );
  }

  Widget  _buildDescription(){
    return Text(
      item.description,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildPriceAndLikes(){
    return Row(
      children: [
        Text('${item.price}'),
        const SizedBox(width: 4,),
        const Icon(Icons.thumb_up,color: Colors.blue,size: 18,)
      ],
    );
  }

  Widget _buildImageStack(ColorScheme colorScheme){
    return Stack(
      children: [
        _buildImage(),
        _buildAddButton(colorScheme),
      ],
    );
  }

  Widget _buildImage(){
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4),
        child: AspectRatio(
          aspectRatio: 1.0,
          child: Image.network(
            item.image,
            fit: BoxFit.cover,
          ),),
      ),
      );
  }
}