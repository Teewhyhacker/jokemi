
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.subTitle,
    this.onPressed,
    this.isHome,
  });
  final String? title;
  final String? subTitle;
  final VoidCallback? onPressed;
  final bool? isHome;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          const EdgeInsets.only(left: FBSizes.xl, right: FBSizes.xl, top: 40),
      child: AppBar(
        leading: isHome!
            ? null
            : IconButton(
                onPressed: onPressed, icon: const Icon(Icons.arrow_back)),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title!,
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                if (isHome!) const Icon(Icons.handshake)
              ],
            ),
            if (isHome!)
              Text(
                subTitle!,
                style: Theme.of(context).textTheme.bodyLarge,
              )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.person_2_sharp,
                size: FBSizes.iconlg,
              ))
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(120);
}
