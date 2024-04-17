import 'package:flutter/material.dart';

import '../../../screens/joke_page_details.dart';
import '../../../utils/constants/sizes.dart';

class JokeCategoryCard extends StatelessWidget {
  const JokeCategoryCard({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    this.index,
  });
  final String title;
  final int? index;
  final IconData icon;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print(index);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (builder) => JokePageDetails(
                index: index!, title: title, icon: icon, color: color)));
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 1.9,
        width: MediaQuery.of(context).size.width / 1.2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(FBSizes.borderRadiusLg),
          color: color,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(FBSizes.md),
                child: Icon(
                  icon,
                  size: FBSizes.iconlg,
                ),
              )),
          Text(title,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }
}
