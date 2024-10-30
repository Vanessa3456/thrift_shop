class Post {
  String id;
  String profileImageUrl;
  String comment;
  String timestamp;

  Post(
    this.id,
    this.profileImageUrl,
    this.comment,
    this.timestamp,
  );

}

List<Post> posts = [
  Post('1', 'lib/images/shop1.jpg',
      'Hey,check out our black friday offers!!!', '10'),
  Post('2', 'lib/images/shop2.jpg',
      'Near pair of sneakers where added,check out', '80'),
  Post('3', 'lib/images/shop3.jpg',
      'We are on discount', '20'),
  Post('4', 'lib/images/ladiesshoes.jpg',
      'Happy customer week,check what we have for you', '30'),
  Post(
      '5',
      'lib/images/shoeshop.jpg',
      '''Nike just released a new pair of sneakers,check out''',
      '40'),
  Post(
      '6',
      'lib/images/shoesshop2.jpg',
      '''We are doing free delivery for any shopping above 6k''',
      '50'),
  Post(
      '7',
      'lib/images/jewelry.jpg',
      '''Shipped from Victoria Secret,check out the brand new neckless!''',
      '50'),
  Post('8', 'lib/images/jewelry2.jpg',
      'Buy one Lavita Neckless today and and get one free', '60'),
  
];