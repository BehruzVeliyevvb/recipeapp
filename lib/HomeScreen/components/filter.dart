import 'package:flutter/material.dart';

import '../../constants.dart';

class Filter extends StatelessWidget {
  const Filter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: kDefaultPadding),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          height: size.height * 0.045,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0), color: Colors.white),
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.4),
          margin: EdgeInsets.only(right: kDefaultPadding * 0.5),
          child: Row(
            children: [Icon(Icons.filter)],
          ),
        ),
      ),
    );
  }
}
