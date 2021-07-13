import 'package:flutter/material.dart';
import 'package:recipe/DetailsScreen/DetailsScreen.dart';
import 'package:recipe/Models/Item.dart';

class ItemCard extends StatefulWidget {
  const ItemCard({required this.itemlist, Key? key}) : super(key: key);
  final Item itemlist;

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool saved = false;
  bool loved = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => DetailsScreen(
                    item: widget.itemlist,
                  )),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Stack(children: [
              Align(
                alignment: Alignment.topCenter,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24),
                  child: Hero(
                    tag: widget.itemlist.image,
                    child: Image(
                      height: size.height * 0.420,
                      width: size.width * 0.820,
                      fit: BoxFit.cover,
                      image: AssetImage(widget.itemlist.image),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 20,
                  right: 40,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        saved = !saved;
                      });
                    },
                    child: Icon(
                      saved
                          ? Icons.bookmark_sharp
                          : Icons.bookmark_add_outlined,
                      color: Colors.white,
                      size: 32,
                    ),
                  ))
            ]),
            SizedBox(
              height: size.height * 0.04,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.itemlist.recipename,
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          widget.itemlist.writer,
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  Flexible(
                      flex: 1,
                      child: Row(
                        children: [
                          Icon(
                            Icons.timer,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            widget.itemlist.cookingtime.toString() + '\'',
                            style: TextStyle(color: Colors.white),
                          ),
                          Spacer(),
                          InkWell(
                            onTap: () {
                              setState(() {
                                loved = !loved;
                              });
                            },
                            child: Icon(
                              loved
                                  ? Icons.favorite
                                  : Icons.favorite_border_rounded,
                              color: loved ? Colors.red : Colors.white,
                            ),
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
