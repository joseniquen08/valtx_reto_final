import 'package:get/get.dart';
import 'package:reto_final/app/routes/app_routes.dart';
import 'package:reto_final/app/ui/views/category/restaurant_view.dart';
import 'package:reto_final/app/ui/views/home/home_view.dart';

abstract class AppViews {
  static final views = [
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
    ),
    GetPage(
      name: AppRoutes.restaurant,
      page: () => const RestaurantView(),
    ),
  ];
}
