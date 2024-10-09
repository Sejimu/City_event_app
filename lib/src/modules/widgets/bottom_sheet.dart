import 'package:clubcrafter/src/core/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/config/theme/app_colors.dart';
import '../../core/utils/resources/resources.dart';

class ReviewBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom, // Учет клавиатуры
      ),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0), // Ограничиваем padding
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9, // Ширина 90% экрана
              constraints: BoxConstraints(
                maxWidth: 500.w, // Максимальная ширина 500 пикселей
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 5,),
                  const Text(
                    'Leave a Review',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold , color: Colors.black),
                  ),
                  const SizedBox(height: 16),
                  Container(
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
                                      color: AppColors.hotPink.withOpacity(0.1),
                                    ),
                                    child: Padding(
                                      padding: REdgeInsets.symmetric(horizontal: 8, vertical: 4.5),
                                      child: Text(
                                        "\$30.00",
                                        style: context.textTheme.labelMedium!
                                            .copyWith(color: AppColors.hotPink),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Please give your rating with us',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(5, (index) => const Icon(Icons.star, color: Colors.amber)),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Add a Comment',
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: Colors.grey[300],
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Cancel'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.pink,
                        ),
                        onPressed: () {
                          // Логика для отправки формы
                        },
                        child: const Text('Submit'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
