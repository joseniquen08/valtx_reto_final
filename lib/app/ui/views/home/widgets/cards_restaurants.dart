import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_final/app/ui/views/category/restaurant_view.dart';
import 'package:reto_final/app/ui/views/home/home_controller.dart';

class CardsRestaurants extends StatefulWidget {
  const CardsRestaurants({
    Key? key,
    required this.pageController,
  }) : super(key: key);

  final PageController pageController;

  @override
  _CardsRestaurantsState createState() => _CardsRestaurantsState();
}

class _CardsRestaurantsState extends State<CardsRestaurants> {
  @override
  Widget build(BuildContext context) {
    final homeController = HomeController();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Text(
            "Fastest delivery time",
            style: TextStyle(
              fontSize: 27.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        SizedBox(
          height: 270.0,
          child: PageView.builder(
            controller: widget.pageController,
            scrollDirection: Axis.horizontal,
            itemCount: homeController.restaurants.length,
            onPageChanged: (index) {},
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.all(6.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(() => const RestaurantView(), arguments: index);
                },
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 5.0,
                            right: 5.0,
                          ),
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Container(
                                clipBehavior: Clip.hardEdge,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0),
                                  ),
                                ),
                                child: Image(
                                  image: NetworkImage(
                                    homeController.restaurants[index].urlImage!,
                                  ),
                                  alignment: const Alignment(0.0, 0.45),
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 190.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 15.0,
                          left: 25.0,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 10.0,
                              horizontal: 12.0,
                            ),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                            ),
                            child: Text(
                              homeController.restaurants[index].time!,
                              style: const TextStyle(
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            homeController.restaurants[index].name!,
                            style: const TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          const SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            homeController.restaurants[index].address!,
                            style: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(94, 93, 98, 1.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
