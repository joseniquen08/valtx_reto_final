import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:reto_final/app/ui/views/home/home_controller.dart';

class ListCategories extends StatefulWidget {
  const ListCategories({
    Key? key,
    required this.pageSelectedIndex,
    required this.pageChanged,
    required this.categoryTapped,
  }) : super(key: key);

  final int pageSelectedIndex;
  final ValueChanged<int> pageChanged;
  final ValueChanged<int> categoryTapped;

  @override
  _ListCategoriesState createState() => _ListCategoriesState();
}

class _ListCategoriesState extends State<ListCategories> {
  void _handleTap(int index) {
    widget.categoryTapped(index);
    widget.pageChanged(index);
  }

  @override
  Widget build(BuildContext context) {
    final homeController = HomeController();
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 20.0,
      ),
      height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 60.0,
            margin: const EdgeInsets.only(
              left: 15.0,
              right: 5.0,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
              color: Color.fromRGBO(240, 241, 241, 1.0),
            ),
            alignment: Alignment.center,
            child: const FaIcon(
              FontAwesomeIcons.sliders,
              size: 20.0,
            ),
          ),
          GestureDetector(
            onTap: () {
              _handleTap(1);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(
                  Radius.circular(30.0),
                ),
                color: widget.pageSelectedIndex == 1
                    ? const Color.fromRGBO(23, 23, 28, 1.0)
                    : const Color.fromRGBO(240, 241, 241, 1.0),
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: Image(
                      image: AssetImage("assets/icons/ramen.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    "Noodles",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                      color: widget.pageSelectedIndex == 1
                          ? const Color.fromRGBO(240, 241, 241, 1.0)
                          : const Color.fromRGBO(23, 23, 28, 1.0),
                    ),
                  )
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.pageChanged(2);
            },
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 5.0,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
                color: Color.fromRGBO(240, 241, 241, 1.0),
              ),
              child: Row(
                children: const [
                  SizedBox(
                    width: 25.0,
                    height: 25.0,
                    child: Image(
                      image: AssetImage("assets/icons/taco.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  Text(
                    "Tacos",
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              color: Color.fromRGBO(240, 241, 241, 1.0),
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: Image(
                    image: AssetImage("assets/icons/burger.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(
                  "Burgers",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              color: Color.fromRGBO(240, 241, 241, 1.0),
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: Image(
                    image: AssetImage("assets/icons/pizza.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(
                  "Pizzas",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            margin: const EdgeInsets.symmetric(
              horizontal: 5.0,
            ),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
              color: Color.fromRGBO(240, 241, 241, 1.0),
            ),
            child: Row(
              children: const [
                SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: Image(
                    image: AssetImage("assets/icons/sweet.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(
                  "Sweets",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
