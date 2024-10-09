import 'package:auto_route/annotations.dart';
import 'package:clubcrafter/src/core/config/theme/app_text_styles.dart';
import 'package:clubcrafter/src/core/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/theme/app_colors.dart';
import '../../../../core/utils/resources/resources.dart';

@RoutePage()
class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            centerTitle: true,
            title: Text(
              "Favourite",
              style: TextStyle(color: Colors.black),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 30), // Задаём нужную высоту отступа (можешь поменять на любой размер)
          ),
          SliverList.separated(
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return const FavouriteComponent();
            },
            separatorBuilder: (BuildContext context, int index) => 20.verticalSpace,
          )
        ],
      ),
    );
  }
}


class FavouriteComponent extends StatefulWidget {
  const FavouriteComponent({super.key});

  @override
  State<FavouriteComponent> createState() => _FavouriteComponentState();
}

class _FavouriteComponentState extends State<FavouriteComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.recom,
              width: 85.w,
              height: 70.h,
            ),
            16.horizontalSpace,
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Satellite mega festival - 2023",
                  style: context.textTheme.titleSmall!
                      .copyWith(color: AppColors.black),
                  softWrap: true,
                ),
                16.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 20.h,
                        ),
                        Text(
                          "New York",
                          style: context.textTheme.labelMedium!
                              .copyWith(color: AppColors.grey),
                        ),
                      ],
                    ),
                    80.horizontalSpace,
                    DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5).r,
                          color: AppColors.hotPink.withOpacity(0.1)),
                      child: Padding(
                        padding:
                        REdgeInsets.symmetric(horizontal: 8, vertical: 4.5),
                        child: Text(
                          "\$30.00",
                          style: context.textTheme.labelMedium!
                              .copyWith(color: AppColors.hotPink),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
