import 'package:get/get.dart';
import 'package:reto_final/app/ui/views/home/home_controller.dart';

class FoodData {
  String? name;
  String? description;
  String? price;
  String? urlImage;
  FoodData({this.name, this.description, this.price, this.urlImage});
}

class RestaurantController extends GetxController {
  RestaurantData restaurant = RestaurantData();
  final homeController = HomeController();

  List<FoodData> foods = [
    FoodData(
      name: "Classic ramen with chicken and egg",
      price: "\$ 6,50",
      urlImage:
          "https://images.unsplash.com/photo-1526318896980-cf78c088247c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      description:
          "Easy homemade chicken ramen, with a flavorful broth, roasted chicken, fresh veggies, lots of noodles, and a soft cooked egg.",
    ),
    FoodData(
      name: "Classic ramen with pork and egg",
      price: "\$ 4,99",
      urlImage:
          "https://images.unsplash.com/photo-1552611052-33e04de081de?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
      description:
          "Pork Ramen is a traditional Asian dish that consists of ramen noodles in pork broth with slices of slow-roasted pork, scallions, and any other additions that you desire.",
    ),
    FoodData(
      name: "Tonkotsu ramen - pork bone broth",
      price: "\$ 13,99",
      urlImage:
          "https://images.unsplash.com/photo-1501200040150-4d65c94e8f21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
      description:
          "Ramen Broth is made from a combination of pork bones, chicken carcasses and bonito flakes.",
    ),
    FoodData(
      name: "Miso soup - soup with miso, tofu and dashi broth",
      price: "\$ 8,00",
      urlImage:
          "https://images.unsplash.com/photo-1617421753170-46511a8d73fc?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=465&q=80",
      description:
          "Sticky rice, spicy salmon, fresh vegetables, fiery wasabi, and salty soy sauce. And don’t even get me started on pickled ginger.",
    ),
    FoodData(
      name: "Curry mee - laksa soup with spicy rice noodle",
      price: "\$ 10,00",
      urlImage:
          "https://images.unsplash.com/photo-1607330289024-1535c6b4e1c1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
      description:
          "Laksa noodle soup is a super flavorful Malaysian dish. The soup is thought to be a blending of Chinese and Malaysian or Javanese cuisines, either through the merging of cultures or intermarriage.",
    ),
    FoodData(
      name: "Pho Bo - rice noodle soup with beef, herbs and chili",
      price: "\$ 9,99",
      urlImage:
          "https://images.unsplash.com/photo-1631709497146-a239ef373cf1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80",
      description:
          "A recipe for Phở Bò (Vietnamese Beef Noodle Soup)! This aromatic soup is filled with meat, rice noodles, and fresh herbs for an incredibly comforting breakfast.",
    ),
  ];

  @override
  void onInit() {
    restaurant = homeController.restaurants[Get.arguments];
    super.onInit();
  }
}
