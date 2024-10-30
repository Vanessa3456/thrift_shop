import 'package:thrift_shop/models/shoes.dart';

class Item {
  final String name;
  final String description;
  final String price;
  final String image;
  // final Shoes shoes;

  Item({
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    // required this.shoes,
  });
}

class Shop {
  String id;
  String name;
  String address;
  String attributes;
  String image;
  String imageCredits;
  double distance;
  double rating;
  List<Item> items;

  Shop(this.id, this.name, this.address, this.attributes, this.image,
      this.imageCredits, this.distance, this.rating, this.items);

  String getRatingAndDistance() {
    return '''Rating: ${rating.toStringAsFixed(1)} ★ | Distance: ${distance.toStringAsFixed(1)} miles''';
  }
}

List<Shop> shops = [
  Shop(
    '0',
    'Comrades archives',
    'Koromatangi',
    'Clothes, Shoes, Jewels,Bags',
    'lib/images/cargo2.jpg',
    'lib/images/shop1.jpg',
    2.1,
    4.5,
    [
      Item(
        name: 'Shoes',
        description:
            '''We have a collection of adidas,airforce,puma and any type of shoe that you want''',
        price: 'ksh2500-5000',
        image: 'assets/shoes/airforce1.jpg',
      ),
      Item(
        name: 'Clothes',
        description:
            '''We have a collection of skirts,jots,sweatshirts and any type of clothe that you want''',
        price: 'ksh700-1500',
        image: 'assets/clothes/dresses.jpg',
      ),
      Item(
        name: 'Jewels',
        description: '''We have a collection of all jewelries''',
        price: 'ksh300',
        image: 'lib/images/jewelry1.jpg',
        // shoes: shoes[0],
      ),
      Item(
        name: 'Bags',
        description: '''We have all kinds''',
        price: 'ksh500',
        image: 'assets/bags/bag1.jpg',
        // shoes: shoes[0],
      ),
    ],
  ),
  Shop(
    '1',
    'Students Paradise',
    'Lurambi',
    ' Shoes',
    'lib/images/airmaxR.jpg',
    'lib/images/airmaxR.jpg',
    2.1,
    4.5,
    [
      Item(
        name: 'Airforce',
        description: '''We have a collection of all colors''',
        price: 'ksh2500-5000',
        image: 'assets/shoes/airforce1.jpg',
      ),
      Item(
        name: 'Airmax',
        description:
            '''We got you covered with all the types including the latest''',
        price: 'ksh3000-6000',
        image: 'assets/clothes/airmaxR.jpg',
      ),
      Item(
        name: 'Men Official Shoes',
        description: '''Mens official''',
        price: 'ksh700',
        image: 'assets/shoes/MenOfficial.jpg',
      ),
      Item(
        name: 'Women official shoes',
        description: '''We have all kinds''',
        price: 'ksh300',
        image: 'assets/shoes/ladiesshoes.jpg',
      ),
    ],
  ),
  Shop(
    '2',
    'Comrades archives',
    'Koromatangi',
    'Clothes,Bags',
    'assets/bags/bag1.jpg',
    'assets/clothes/cargo1.jpg',
    2.1,
    4.5,
    [
      Item(
        name: 'Bags',
        description: '''For now we only have gucci''',
        price: 'ksh1500',
        image: 'assets/bags/bags3.jpg',
      ),
      Item(
        name: 'Clothes',
        description: '''Come and get yourself the best cargo pant around''',
        price: 'ksh1500',
        image: 'assets/clothes/cargo2.jpg',
      ),
      Item(
        name: 'Clothes',
        description: '''Best cargos''',
        price: 'ksh1500',
        image: 'assets/clothes/cargo3.jpg',
      ),
      Item(
        name: 'Bags',
        description: '''Gucci''',
        price: 'ksh500',
        image: 'assets/bags/bag2.jpg',
      ),
    ],
  ),
  Shop(
    '3',
    'Clothes',
    'JoyLand',
    'Clothes',
    'lib/images/cargo2.jpg',
    'lib/images/shop1.jpg',
    2.1,
    4.5,
    [
      Item(
        name: 'Dress',
        description: '''We have all kinds''',
        price: 'ksh700 - 1000',
        image: 'assets/clothes/blackdress.jpg',
      ),
      Item(
        name: 'Cargo',
        description: '''Available in all colors''',
        price: 'ksh1500',
        image: 'assets/clothes/cargo4.jpg',
      ),
      Item(
        name: 'Body Shapers',
        description: '''Available in all colors''',
        price: 'ksh300',
        image: 'assets/clothes/bsblackS.jpg',
      ),
      Item(
        name: 'Dresses',
        description: '''We have all kinds''',
        price:'ksh1000',
        image: 'assets/clothes/blackdress.jpg',
      ),
    ],
  ),
];
