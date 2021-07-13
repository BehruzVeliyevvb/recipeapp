import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe/Models/Categories.dart';

import '../../constants.dart';

class Categories extends StatefulWidget {
  const Categories({
    Key? key,
  }) : super(key: key);
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int selecteditem = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding),
      child: SizedBox(
        height: size.height * 0.045,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: demoCategories.length,
            itemBuilder: (BuildContext, int index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    this.selecteditem = index;
                  });
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  padding:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5),
                  margin: EdgeInsets.only(right: kDefaultPadding * 0.5),
                  child: Row(
                    children: [
                      Container(
                          height: size.height * 0.045,
                          width: size.width * 0.095,
                          child: SvgPicture.asset(demoCategories[index].icon)),
                      SizedBox(
                        width: size.width * 0.015,
                      ),
                      Text(
                        demoCategories[index].name,
                        style: TextStyle(
                            fontSize: 16.0,
                            color: kprimaryColor,
                            fontWeight: selecteditem == index
                                ? FontWeight.bold
                                : FontWeight.normal),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
