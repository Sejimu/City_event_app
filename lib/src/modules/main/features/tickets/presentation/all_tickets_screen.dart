import 'package:auto_route/auto_route.dart';
import 'package:clubcrafter/generated/l10n.dart';
import 'package:clubcrafter/src/core/config/theme/app_colors.dart';
import 'package:clubcrafter/src/core/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AllTicketsScreen extends StatefulWidget {
  const AllTicketsScreen({super.key});

  @override
  State<AllTicketsScreen> createState() => _AllTicketsScreenState();
}

class _AllTicketsScreenState extends State<AllTicketsScreen> {
  List<bool> isSelected = [true, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).allTickets,
          style:
              context.textTheme.titleMedium!.copyWith(color: AppColors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              20.verticalSpace,
              Center(
                child: ToggleButtons(
                  borderRadius: BorderRadius.circular(10),
                  selectedColor: Colors.white,
                  fillColor: Colors.pink,
                  color: Colors.black,
                  selectedBorderColor: Colors.pink,
                  borderColor: Colors.grey.shade300,
                  constraints:
                      const BoxConstraints(minHeight: 40, minWidth: 120),
                  isSelected: isSelected,
                  onPressed: (int newIndex) {
                    setState(() {
                      for (int index = 0; index < isSelected.length; index++) {
                        isSelected[index] = index == newIndex;
                      }
                    });
                  },
                  children: const [
                    Text("Upcoming"),
                    Text("Completed"),
                    Text("Cancelled"),
                  ],
                ),
              ),
              20.verticalSpace,
              SizedBox(
                  child: isSelected[0]
                      ? const Center(
                          child: Text(
                            'Showing Upcoming Tickets',
                            style: TextStyle(color: Colors.black),
                          ),
                        )
                      : isSelected[1]
                          ? const Center(
                              child: Text(
                                'Showing Completed Tickets',
                                style: TextStyle(color: Colors.black),
                              ),
                            )
                          : const Center(
                              child: Text(
                                'Showing Cancelled Tickets',
                                style: TextStyle(color: Colors.black),
                              ),
                            )),
            ],
          ),
        ),
      ),
    );
  }
}
