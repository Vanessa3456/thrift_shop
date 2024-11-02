//when the user clicks on the shops near me section
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thrift_shop/components/shop_item.dart';
import 'package:thrift_shop/models/shop.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key, required this.shop});
  final Shop shop;

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //TODO:Add desktop threshold
  static const desktopThreshold = 700;
  //TODO:Add constraint properties
  //TODO: Calculate constrained width
  //TODO:Add calculate colummn count
  int calculateColumnCount(double screenWidth) {
    return screenWidth > desktopThreshold ? 2 : 1;
  }

  //TODO:Build custom scroll view
  CustomScrollView _buildCustomScrollView() {
    return CustomScrollView(
      slivers: [
        //TODO:Add sliver app bar
        _buildSliverAppBar(),

        //TODO:add shop info session
        _buildInfoSection(),
        //TODO:Add menu item gridview section
      _buildGridViewSection('Menu'),
      ],
    );
  }

  //TODO:Build silver app bar
  SliverAppBar _buildSliverAppBar() {
    //this is a collapsable app bar
    return SliverAppBar(
      pinned: true, //keep it pinned at the top of the view
      expandedHeight: 300.0, //this is for max height when expanded
      flexibleSpace: FlexibleSpaceBar(
          //flexible view for callapsing part of the appbar
          background: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 64.0),
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 30.0),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                      image: AssetImage(widget.shop.image), fit: BoxFit.cover),
                ),
              ),
              const Positioned(
                  bottom: 0.0,
                  left: 16.0,
                  child: CircleAvatar(
                    radius: 30,
                    child: Icon(
                      Icons.store,
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      )),
    );
  }

  //TODO: Build info section
  SliverToBoxAdapter _buildInfoSection() {
    final textTheme = Theme.of(context).textTheme;
    final shop = widget.shop;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              shop.name,
              style: textTheme.headlineLarge,
            ),
            Text(
              shop.address,
              style: textTheme.bodySmall,
            ),
            Text(
              shop.getRatingAndDistance(),
              style: textTheme.bodySmall,
            ),
            Text(
              shop.attributes,
              style: textTheme.labelSmall,
            ),
          ],
        ),
      ),
    );
  }

  //TODO:Build grid item
  Widget _buildGriditem(int index) {
    //the index is used to access a specific item from the shops menu
    final item = widget.shop.items[index];
    return InkWell(
      onTap: () {
        //present bottom sheet in the future
      },
      child: ShopItem(item: item),
    );
  }

  //TODO:Build section title
  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  //TODO:Build grid view
  GridView _buildGridView(int columns) {
    return GridView.builder(
      padding: const EdgeInsets.all(0),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 16,
          crossAxisSpacing: 16,
          childAspectRatio: 3.5,
          crossAxisCount: columns),
      itemBuilder: (context, index) => _buildGriditem(index),
      itemCount: widget.shop.items.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
    );
  }

  //TODO:Build grid view section
  SliverToBoxAdapter _buildGridViewSection(String title) {//create a section with a title and gridview
    final columns = calculateColumnCount(MediaQuery.of(context).size.width);
    return SliverToBoxAdapter(//to embed a non-sliver widget
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _sectionTitle(title),
            _buildGridView(columns),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        //Replace with custom scroll view

        child: _buildCustomScrollView(),
      ),
    );
  }
}
