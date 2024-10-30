class OutfitCategories {
  String name; //name of the outfit eg shoes,clothes,jewelry
  int numberOfShops; //where we can find the restaurant
  String imageUrl;

  OutfitCategories(this.name, this.numberOfShops, this.imageUrl);
}

List<OutfitCategories> categories = [
  OutfitCategories('Clothes', 5, 'lib/images/cargo1.jpg'),
  OutfitCategories('Shoes', 5, 'assets/shoes/b3R.jpg'),
  OutfitCategories('Jewelries', 5, 'lib/images/jewelry1.jpg'),
  OutfitCategories('Bags', 5, 'assets/bags/bag1.jpg'),
];
