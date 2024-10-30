import 'package:thrift_shop/models/outfit_categories.dart';
import 'package:thrift_shop/models/post.dart';
import 'package:thrift_shop/models/shop.dart';


// ExploreData serves as a data container that holds
//list of restaurants, food categories, and friend posts.
class ExploreData {
  final List<Shop> shops;
  final List<OutfitCategories> categories;
  final List<Post> shopPosts;

  ExploreData(this.shops, this.categories, this.shopPosts);
}

// Mock Yummy service that grabs sample data to mock up a food app request/response
class MockShopService {
  // Batch request that gets both today recipes and friend's feed
  Future<ExploreData> getExploreData() async {//makes a batch request and returns the three list
    final shops = await _getShops();
    final categories = await _getCategories();
    final friendPosts = await _getshopPosts();

    return ExploreData(shops, categories, friendPosts);
  }

  // Get sample food categories to display in ui
  Future<List<OutfitCategories>> _getCategories() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Return mock categories
    return categories;
  }

  // Get the friend posts to display in ui
  Future<List<Post>> _getshopPosts() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Return mock posts
    return posts;
  }

  // Get the restaurants to display in ui
  Future<List<Shop>> _getShops() async {
    // Simulate api request wait time
    await Future.delayed(const Duration(milliseconds: 1000));
    // Return mock restaurants
    return shops;
  }
}