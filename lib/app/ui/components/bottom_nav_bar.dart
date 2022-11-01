import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BottomAppBar(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50.0,
              vertical: 15.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
                SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: Image(
                    image: AssetImage("assets/icons/home_nav.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: Image(
                    image: AssetImage("assets/icons/cards_nav.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: Image(
                    image: AssetImage("assets/icons/shopping_cart_nav.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(
                  width: 25.0,
                  height: 25.0,
                  child: Image(
                    image: AssetImage("assets/icons/user_nav.png"),
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
