import 'package:flutter/material.dart';
import 'package:reto_final/app/ui/components/bottom_nav_bar.dart';
import 'package:reto_final/app/ui/views/home/home_controller.dart';
import 'package:reto_final/app/ui/views/home/widgets/cards_restaurants.dart';
import 'package:reto_final/app/ui/views/home/widgets/header.dart';
import 'package:reto_final/app/ui/views/home/widgets/list_categories.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _categorySelectedIndex = 0;

  final homeController = HomeController();

  final PageController _pageController = PageController(
    viewportFraction: 1.0,
  );

  @override
  void initState() {
    super.initState();
  }

  void _pageChanged(int index) {
    setState(() {
      _categorySelectedIndex = index;
    });
  }

  void _categoryTapped(int index) {
    setState(() {
      _categorySelectedIndex = index;
      if (_pageController.hasClients) {
        _pageController.animateToPage(
          index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Header(),
          ListCategories(
            pageSelectedIndex: _categorySelectedIndex,
            pageChanged: _pageChanged,
            categoryTapped: _categoryTapped,
          ),
          CardsRestaurants(
            pageController: _pageController,
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
