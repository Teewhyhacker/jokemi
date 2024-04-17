import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:jokemi/common/widgets/appbar/custom_app_bar.dart';
import 'package:jokemi/common/widgets/text/text_header.dart';
import 'package:jokemi/home.dart';

import "dart:math";
import 'package:jokemi/utils/constants/sizes.dart';

import '../common/widgets/card/joke_card.dart';
import '../common/widgets/card/joke_category_card.dart';
import '../utils/constants/colors.dart';

class JokePageDetails extends StatefulWidget {
  const JokePageDetails(
      {super.key,
      required this.title,
      required this.icon,
      required this.color,
      required this.index});
  final String title;
  final IconData icon;
  final Color color;
  final int index;
  @override
  State<JokePageDetails> createState() => _JokePageDetailsState();
}

class _JokePageDetailsState extends State<JokePageDetails> {
  @override
  Widget build(BuildContext context) {
    var id;
    switch (widget.title) {
      case 'Programming':
        setState(() {
          id = 0;
        });
        print(id);
        break;
      case 'Misc':
        setState(() {
          id = 1;
        });
        print(id);
      case 'Dark':
        setState(() {
          id = 2;
        });
        print(id);
      case 'Pun':
        setState(() {
          id = 3;
        });
        print(id);
      case 'Spooky':
        setState(() {
          id = 4;
        });
        print(id);
      case 'Christmas':
        setState(() {
          id = 5;
        });
        print(id);
        break;
      default:
    }

    List<JokeCategoryCard> jokeCategoryCardList = [
      JokeCategoryCard(
        index: 0,
        title: "Programming",
        icon: Icons.code,
        color: FBColor.redflashCards,
      ),
      JokeCategoryCard(
        index: 1,
        title: "Misc",
        icon: Icons.code,
        color: FBColor.deepflashCards,
      ),
      JokeCategoryCard(
        index: 2,
        title: "Dark",
        icon: Icons.code,
        color: FBColor.pinkflashCards,
      ),
      JokeCategoryCard(
        index: 3,
        title: "Pun",
        icon: Icons.code,
        color: FBColor.brownflashCards,
      ),
      JokeCategoryCard(
        index: 4,
        title: "Spooky",
        icon: Icons.code,
        color: FBColor.purpleflashCards,
      ),
      JokeCategoryCard(
        index: 5,
        title: "Christmas",
        icon: Icons.code,
        color: FBColor.yellowflashCards,
      )
    ];

    List<JokeCategoryCard> filteredList =
        jokeCategoryCardList.where((category) => category.index != id).toList();
    return Scaffold(
      appBar: CustomAppBar(
        title: widget.title,
        isHome: false,
        onPressed: () => Navigator.of(context).pop(),
      ),
      body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
                child: JokeCard(
                    title: widget.title,
                    icon: widget.icon,
                    color: widget.color)),
            const SizedBox(
              height: FBSizes.spaceBtwItems,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30.0),
              child: TextHeader(
                title: "Other categories",
                color: Colors.grey,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                    ),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: filteredList.length ,
                    itemBuilder: (BuildContext context, int index) {
                      return widget.index == id
                          ? Padding(
                              padding: const EdgeInsets.only(
                                  top: 5, bottom: 7, right: 5, left: 5),
                              child: filteredList[index],
                            )
                          : null;
                    }),
              ),
            )
          ]),
    );
  }
}
