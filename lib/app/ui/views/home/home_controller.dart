import 'package:get/get.dart';

class RestaurantData {
  String? name;
  String? address;
  String? urlImage;
  String? time;
  RestaurantData({this.name, this.address, this.urlImage, this.time});
}

class HomeController extends GetxController {
  List<RestaurantData> restaurants = [
    RestaurantData(
      name: "eel & leaf",
      address: "3601 Indian Way Crk",
      urlImage:
          "https://images.unsplash.com/photo-1547496502-affa22d38842?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=677&q=80",
      time: "30-45 min",
    ),
    RestaurantData(
      name: "Noodles & Ramen",
      address: "812 Avenue, 153673",
      urlImage:
          "https://images.unsplash.com/photo-1553395266-51c63ddf3d8e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80",
      time: "30-45 min",
    ),
  ];

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
