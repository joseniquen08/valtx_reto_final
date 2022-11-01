import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_final/app/ui/views/category/restaurant_controller.dart';

class RestaurantView extends StatefulWidget {
  const RestaurantView({Key? key}) : super(key: key);

  @override
  _RestaurantViewState createState() => _RestaurantViewState();
}

class _RestaurantViewState extends State<RestaurantView> {
  Map<String, String> foodSelected = {};
  @override
  Widget build(BuildContext context) {
    final restaurantController = RestaurantController();
    return GetBuilder<RestaurantController>(
      init: RestaurantController(),
      builder: (controller) {
        return Scaffold(
          body: Stack(
            children: [
              SizedBox(
                height: 420.0,
                width: double.infinity,
                child: Image(
                  image: NetworkImage(
                    "${controller.restaurant.urlImage}",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 55.0,
                left: 25.0,
                child: GestureDetector(
                  child: Container(
                    width: 65.0,
                    height: 65.0,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 0.13),
                      borderRadius: BorderRadius.all(
                        Radius.circular(35.0),
                      ),
                    ),
                    child: const Icon(
                      FluentIcons.arrow_left_24_regular,
                      size: 25.0,
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              Positioned(
                top: 55.0,
                right: 25.0,
                child: Container(
                  width: 65.0,
                  height: 65.0,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.13),
                    borderRadius: BorderRadius.all(
                      Radius.circular(35.0),
                    ),
                  ),
                  child: const Icon(
                    FluentIcons.more_horizontal_24_filled,
                    size: 35.0,
                    color: Colors.white,
                  ),
                ),
              ),
              DraggableScrollableSheet(
                initialChildSize: 0.55,
                minChildSize: 0.55,
                maxChildSize: 1.0,
                builder:
                    (BuildContext context, ScrollController scrollController) {
                  return Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(35.0),
                      ),
                      color: Colors.white,
                    ),
                    child: ListView(
                      controller: scrollController,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30.0,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "${controller.restaurant.name}",
                                style: const TextStyle(
                                  fontSize: 28.0,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              Text(
                                "${controller.restaurant.address}",
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 20.0,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        const Text(
                                          "Delivery time",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Text(
                                          "${controller.restaurant.time}utes",
                                          style: const TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: const [
                                        Text(
                                          "Delivery cost",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        ),
                                        Text(
                                          "\$ 5-10",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(25.0),
                                  ),
                                  color: Color.fromRGBO(245, 244, 245, 1.0),
                                ),
                                child: const Text(
                                  "Classic",
                                  style: TextStyle(
                                    color: Color.fromRGBO(15, 15, 15, 1.0),
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                // decoration: const BoxDecoration(
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(25.0),
                                //   ),
                                //   color: Color.fromRGBO(245, 244, 245, 1.0),
                                // ),
                                child: const Text(
                                  "Experemental",
                                  style: TextStyle(
                                    color: Color.fromRGBO(15, 15, 15, 1.0),
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 15.0,
                                  horizontal: 20.0,
                                ),
                                // decoration: const BoxDecoration(
                                //   borderRadius: BorderRadius.all(
                                //     Radius.circular(25.0),
                                //   ),
                                //   color: Color.fromRGBO(245, 244, 245, 1.0),
                                // ),
                                child: const Text(
                                  "Speicality",
                                  style: TextStyle(
                                    color: Color.fromRGBO(15, 15, 15, 1.0),
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GridView.builder(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.0,
                            vertical: 20.0,
                          ),
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 5.0,
                                  mainAxisSpacing: 15.0,
                                  childAspectRatio: (1 / 1.2)),
                          itemCount: restaurantController.foods.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                showModalBottomSheet(
                                    isScrollControlled: true,
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    builder: (BuildContext context) {
                                      foodSelected["description"] =
                                          "${restaurantController.foods[index].description}";
                                      foodSelected["urlImage"] =
                                          "${restaurantController.foods[index].urlImage}";
                                      return SizedBox(
                                        height: MediaQuery.of(context)
                                                .copyWith()
                                                .size
                                                .height *
                                            0.75,
                                        width: double.infinity,
                                        child: Column(
                                          children: [
                                            Container(
                                              width: 70.0,
                                              height: 8.0,
                                              margin: const EdgeInsets.only(
                                                bottom: 10.0,
                                              ),
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(5.0),
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                height: 500.0,
                                                clipBehavior: Clip.hardEdge,
                                                decoration: const BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(45.0),
                                                    topRight:
                                                        Radius.circular(45.0),
                                                  ),
                                                  color: Colors.white,
                                                ),
                                                child: Container(
                                                  child: Column(
                                                    children: [
                                                      SizedBox(
                                                        height: 280.0,
                                                        width: double.infinity,
                                                        child: Image(
                                                          image: NetworkImage(
                                                            foodSelected[
                                                                "urlImage"]!,
                                                          ),
                                                          fit: BoxFit.cover,
                                                          alignment:
                                                              const Alignment(
                                                                  0.0, 0.75),
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 25.0,
                                                      ),
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          vertical: 5.0,
                                                          horizontal: 20.0,
                                                        ),
                                                        child: Text(
                                                          foodSelected[
                                                              "description"]!,
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 16.0,
                                                          ),
                                                        ),
                                                      ),
                                                      Container(
                                                        padding:
                                                            const EdgeInsets
                                                                .symmetric(
                                                          vertical: 5.0,
                                                          horizontal: 20.0,
                                                        ),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const Text(
                                                              "Nutritional value per plate",
                                                              style: TextStyle(
                                                                fontSize: 16.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                            Container(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .symmetric(
                                                                vertical: 15.0,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: const [
                                                                      Text(
                                                                        "380",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                          "kcal"),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: const [
                                                                      Text(
                                                                        "13.1",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                          "proteins"),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: const [
                                                                      Text(
                                                                        "20,2",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                          "fats"),
                                                                    ],
                                                                  ),
                                                                  Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: const [
                                                                      Text(
                                                                        "35.6",
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              16.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                          "carbs"),
                                                                    ],
                                                                  ),
                                                                ],
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
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: Container(
                                height: 300,
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
                                          restaurantController
                                              .foods[index].urlImage!,
                                        ),
                                        alignment: const Alignment(0.0, 0.45),
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: 130.0,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 8.0,
                                    ),
                                    Text(
                                      restaurantController.foods[index].name!,
                                      style: const TextStyle(
                                        fontSize: 14.5,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Container(
                                      width: double.infinity,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 13.0,
                                        horizontal: 20.0,
                                      ),
                                      alignment: Alignment.center,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(25.0),
                                        ),
                                        color:
                                            Color.fromRGBO(245, 244, 245, 1.0),
                                      ),
                                      child: Text(
                                        restaurantController
                                            .foods[index].price!,
                                        style: const TextStyle(
                                          color:
                                              Color.fromRGBO(15, 15, 15, 1.0),
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
