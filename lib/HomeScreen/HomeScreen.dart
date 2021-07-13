import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:recipe/FavoriteScreen/FavoriteScreen.dart';
import 'package:recipe/ProfileScreen/ProfileScreen.dart';
import 'package:recipe/RecipeScreen/RecipeScreen.dart';

import '../constants.dart';
import 'components/Body.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedItemIndex = 0;
  final List _children = [
    Body(),
    FavoriteScreen(),
    RecipeScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
      body: _children.elementAt(selectedItemIndex),
      bottomNavigationBar: DelayedDisplay(
        delay: Duration(milliseconds: 200),
        child: Container(
          height: size.height * 0.090,
          width: double.infinity,
          margin: EdgeInsets.all(kDefaultPadding),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 1.5),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildNavbar(Icons.home_mini_rounded, 0, 'Home'),
              buildNavbar(Icons.favorite_border_rounded, 1, 'Favorite'),
              buildNavbar(Icons.receipt_long, 2, 'Recipe'),
              buildNavbar(Icons.person_outline, 3, 'Profil'),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNavbar(
    IconData icons,
    int index,
    String name,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItemIndex = index;
        });
      },
      child: DelayedDisplay(
        delay: Duration(milliseconds: 400 * index),
        slidingBeginOffset: const Offset(-1.0, 0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icons,
                color: kprimaryColor,
                size: 21.0,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
