import 'package:flutter/material.dart';
import 'package:jokemi/screens/joke_page_details.dart';
import 'package:jokemi/utils/constants/sizes.dart';
import 'package:jokemi/utils/constants/text_strings.dart';
import 'common/widgets/appbar/custom_app_bar.dart';
import 'common/widgets/card/joke_category_card.dart';
import 'common/widgets/text/text_header.dart';

import 'utils/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
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
    return Scaffold(
      appBar: const CustomAppBar(
        title: FBTexts.homeAppBarTitle,
        subTitle: FBTexts.homeAppBarSubTitle,
        isHome: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TextHeader(
              title: FBTexts.jokeCategories,
            ),
            const SizedBox(
              height: FBSizes.spaceBtwSections,
            ),
            Expanded(
              // flex: 2,
              child: GridView.builder(
                  itemCount: jokeCategoryCardList.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                 
                    return Container(
                      padding: EdgeInsets.only(right: 10, bottom: 15),
                      child: jokeCategoryCardList[index],
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
