import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListCategories extends StatefulWidget {
  const ListCategories({Key? key}) : super(key: key);

  @override
  _ListCategoriesState createState() => _ListCategoriesState();
}

class _ListCategoriesState extends State<ListCategories> {
  @override
  Widget build(BuildContext context) {
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
                    image: AssetImage("assets/icons/ramen.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 12.0,
                ),
                Text(
                  "Noodles",
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
