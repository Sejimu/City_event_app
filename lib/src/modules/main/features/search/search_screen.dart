import 'package:auto_route/auto_route.dart';
import 'package:clubcrafter/src/core/utils/extensions/extensions.dart';
import 'package:clubcrafter/src/core/utils/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/config/theme/app_colors.dart';
import '../../../widgets/cruft_icon_button.dart';
import '../widgets/search_home_field.dart';

const double _paddingSmall = 5;
const double _paddingMedium = 20;
const double _paddingLarge = 30;

@RoutePage()
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: REdgeInsets.fromLTRB(_paddingMedium, _paddingLarge,
                  _paddingMedium, _paddingMedium),
              sliver: SliverToBoxAdapter(
                child: SearchField(
                  controller: _controller,
                ),
              ),
            ),
            SliverPadding(
              padding: REdgeInsets.fromLTRB(_paddingMedium, _paddingSmall,
                  _paddingMedium, _paddingMedium),
              sliver: SliverToBoxAdapter(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink[50],
                      padding: const EdgeInsets.all(15),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: AppColors.hotPink,
                      ),
                      Text(
                        "My Current Location",
                        style:
                            TextStyle(color: AppColors.hotPink, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.fromLTRB(20.w, 25.w, 20.w, 25.w),
              sliver: const SliverToBoxAdapter(
                child: Column(
                  children: [
                    WidgetForSearch(),
                    WidgetForSearch(),
                    WidgetForSearch(),
                    WidgetForSearch(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetForSearch extends StatelessWidget {
  const WidgetForSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: REdgeInsets.all(4),
      child: Row(
        children: [
          Image.asset(
            Images.event,
            width: 85.w,
            height: 75.w,
            fit: BoxFit.fill,
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
                  const Text(
                    "THU 26 May, 09:00",
                    style: TextStyle(color: AppColors.black),
                  ),
                  15.horizontalSpace,
                  SizedBox(
                    width: 60.w,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}



const double _paddingUnit = 20;

class SearchField extends StatelessWidget {
  final TextEditingController controller;

  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
autofocus: true,
      cursorColor: AppColors.black,
      controller: controller,
      style: context.textTheme.bodySmall!.copyWith(color: AppColors.black),
      maxLines: 1,
      decoration: InputDecoration(
          hintText: S.of(context).homeSearch,
          hintStyle: context.textTheme.bodySmall!
              .copyWith(color: AppColors.grey.withOpacity(0.3)),
          prefixIcon: Padding(
            padding: REdgeInsets.only(left: _paddingUnit, right: 10),
            child: Icon(
              Icons.search_outlined,
              color: AppColors.grey.withOpacity(0.3),
              size: 25.h,
            ),
          ),
          suffixIcon: CruftIconButton(
            onPressed: () {},
            icon: Icons.sort_sharp,
          ),
          contentPadding:
          REdgeInsets.symmetric(horizontal: _paddingUnit, vertical: 14),
          enabledBorder: outlineborder(),
          focusedBorder: outlineborder()),
    );
  }

  OutlineInputBorder outlineborder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.grey.withOpacity(0.4)),
        borderRadius: BorderRadius.circular(_paddingUnit));
  }

}