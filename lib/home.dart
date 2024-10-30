import 'package:flutter/material.dart';
import 'package:thrift_shop/components/category_card.dart';
import 'package:thrift_shop/components/color_button.dart';
import 'package:thrift_shop/components/post_card.dart';
import 'package:thrift_shop/components/shop_card.dart';
import 'package:thrift_shop/components/theme_button.dart';
import 'package:thrift_shop/constants.dart';
import 'package:thrift_shop/models/post.dart';
import 'package:thrift_shop/models/shop.dart';
import 'package:thrift_shop/screens/explore_page.dart';
import 'models/outfit_categories.dart';

class Home extends StatefulWidget {
  const Home({
    super.key,
    required this.changeTheme,
    required this.changeColor,
    required this.colorSelected,
  });

  final void Function(bool useLightMode) changeTheme;
  final void Function(int value) changeColor;
  final ColorSelection colorSelected;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //TODO:Track current tab
  int tab = 0;

  //TODO:Define tab bar destinations
  List<NavigationDestination> appBarDestinations = const [
    NavigationDestination(
      icon: Icon(Icons.home_outlined),
      label: 'Explore',
      selectedIcon: Icon(Icons.home),
    ),
    NavigationDestination(
      icon: Icon(Icons.list_outlined),
      label: 'Orders',
      selectedIcon: Icon(Icons.list),
    ),
    NavigationDestination(
      icon: Icon(Icons.person_2_outlined),
      label: 'Account',
      selectedIcon: Icon(Icons.person),
    ),
    
  ];

  @override
  Widget build(BuildContext context) {
    //TODO:DEFINE PAGES
     final pages = [
      ExplorePage(),
           
      // TODO: Replace with Order Page
      const Center(
        child: Text(
          'Order Page',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
      const Center(
        child: Text(
          'Account Page',
          style: TextStyle(fontSize: 32.0),
        ),
      ),
    ];

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 4.0,
          backgroundColor: Theme.of(context).colorScheme.background,
          actions: [
            ThemeButton(
              changeThemeMode: widget.changeTheme,
            ),
            ColorButton(
              changeColor: widget.changeColor,
              colorSelected: widget.colorSelected,
            ),
          ],
        ),
        //TODO:Switch between pages
        body:IndexedStack(//stacks and displays one widget from pages based on the tab index,preserving the state of all widgets in the stack
          index: tab,
          children: pages,
        ),
        //TODO:Add bottom nav bar
        bottomNavigationBar: NavigationBar(
          selectedIndex: tab,
          onDestinationSelected: (index){
            setState(() {
              tab=index;
            });
          },
          destinations: appBarDestinations),
      ),
    );
  }
}
