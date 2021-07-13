import 'package:flutter/material.dart';
import 'package:recipe/HomeScreen/components/search_bar.dart';
import 'package:recipe/Models/Item.dart';

import '../../constants.dart';
import 'app_bar.dart';
import 'categories.dart';
import 'filter.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(
          context,
          title: '',
          leading: Transform.translate(
            offset: Offset(kDefaultPadding * 0.5, 0),
            child: IconButton(
              icon: Image.asset('assets/images/user.png'),
              onPressed: () {},
            ),
          ),
          actions: [
            IconButton(icon: Icon(Icons.add_alert), onPressed: () {}),
          ],
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(kDefaultPadding),
            child: SafeArea(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text(
                    'Find the Best  \nHealth for you ',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  SearchBar(),
                  Row(
                    children: [Filter(), Expanded(child: Categories())],
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  Text(
                    'Popular',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                  ),
                  SizedBox(
                    height: kDefaultPadding,
                  ),
                  ...List.generate(demoItems.length, (index) {
                    return ItemCard(
                      itemlist: demoItems[index],
                    );
                  })
                ]))));
  }
}
