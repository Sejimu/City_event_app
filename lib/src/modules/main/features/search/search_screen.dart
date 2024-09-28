import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/config/theme/app_colors.dart';
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
            padding: REdgeInsets.fromLTRB(
                _paddingMedium, _paddingLarge, _paddingMedium, _paddingMedium),
            sliver: SliverToBoxAdapter(
              child: SearchHomeField(
                controller: _controller,
              ),
            ),
          ),
          SliverPadding(
            padding: REdgeInsets.fromLTRB(
                _paddingMedium, _paddingSmall, _paddingMedium, _paddingMedium),
            sliver: SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink[50],
                  padding: const EdgeInsets.all(15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.location_on,
                      color: AppColors.hotPink,
                    ),
                    Text(
                      "My Current Location",
                      style: TextStyle(color: AppColors.hotPink , fontSize: 18),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
