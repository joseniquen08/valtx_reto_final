import 'package:flutter/material.dart';
import 'package:reto_final/app/ui/components/bottom_nav_bar.dart';
import 'package:reto_final/app/ui/views/home/widgets/cards_restaurants.dart';
import 'package:reto_final/app/ui/views/home/widgets/header.dart';
import 'package:reto_final/app/ui/views/home/widgets/list_categories.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Header(),
          ListCategories(),
          CardsRestaurants(),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
