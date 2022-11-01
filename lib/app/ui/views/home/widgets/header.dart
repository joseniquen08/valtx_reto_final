import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 60.0,
        bottom: 25.0,
        left: 20.0,
        right: 20.0,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromRGBO(255, 120, 103, 1.0),
            Color.fromRGBO(255, 221, 103, 1.0)
          ],
        ),
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(40.0),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 65.0,
                height: 65.0,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(23, 23, 28, 1.0),
                  borderRadius: BorderRadius.all(
                    Radius.circular(35.0),
                  ),
                ),
                child: const Icon(
                  Ionicons.grid_outline,
                  size: 24.0,
                  color: Colors.white,
                ),
              ),
              Column(
                children: const [
                  Text(
                    "deliver to",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Color.fromRGBO(100, 100, 100, 1.0),
                    ),
                  ),
                  Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 19.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const CircleAvatar(
                radius: 32.0,
                backgroundImage: NetworkImage(
                  "https://xsgames.co/randomusers/assets/avatars/female/10.jpg",
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 45.0,
          ),
          const SizedBox(
            width: double.infinity,
            child: Text(
              "Lookin' for something special?",
              style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Find whatever you need",
                hintStyle: const TextStyle(
                  color: Color.fromRGBO(172, 172, 175, 1.0),
                  fontWeight: FontWeight.w500,
                ),
                prefixIcon: Container(
                  height: 25.0,
                  padding: const EdgeInsets.symmetric(
                    vertical: 12.0,
                  ),
                  child: const Image(
                    image: AssetImage("assets/icons/search.png"),
                    fit: BoxFit.contain,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: const BorderSide(
                    width: 0,
                    color: Colors.transparent,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
