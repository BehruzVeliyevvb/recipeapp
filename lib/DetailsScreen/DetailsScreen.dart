import 'package:flutter/material.dart';
import 'package:recipe/Models/Item.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailsScreen extends StatelessWidget {
  final Item item;
  const DetailsScreen({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SlidingUpPanel(
        minHeight: (size.height / 2),
        maxHeight: (size.height / 1.2),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        parallaxEnabled: true,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: item.image,
                      child: Image(
                        height: (size.height / 2) + 50,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        image: AssetImage(item.image),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 50,
                      right: 20,
                      child: Icon(
                        Icons.bookmark_outline,
                        color: Colors.white,
                        size: 28,
                      )),
                  Positioned(
                      top: 50,
                      left: 20,
                      child: InkWell(
                        onTap: () => Navigator.pop(context),
                        child: Icon(
                          Icons.arrow_back_ios_outlined,
                          color: Colors.white,
                          size: 28,
                        ),
                      ))
                ],
              )
            ],
          ),
        ),
        panel: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(),
        ),
      ),
    );
  }
}
