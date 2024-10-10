import 'package:auto_route/auto_route.dart';
import 'package:clubcrafter/generated/l10n.dart';
import 'package:clubcrafter/src/core/config/theme/app_colors.dart';
import 'package:clubcrafter/src/core/utils/extensions/extensions.dart';
import 'package:flutter/material.dart';



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
      body:  SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),

              Center(
                child: ToggleButtons(
                  borderRadius: BorderRadius.circular(10),
                  selectedColor: Colors.white,
                  fillColor: Colors.pink,
                  color: Colors.black,
                  selectedBorderColor: Colors.pink,
                  borderColor: Colors.grey.shade300,
                  constraints: BoxConstraints(minHeight: 40, minWidth: 120),
                  children: [
                    Text("Upcoming"),
                    Text("Completed"),
                    Text("Cancelled"),
                  ],
                  isSelected: isSelected,
                  onPressed: (int newIndex) {
                    setState(() {
                      for (int index = 0; index < isSelected.length; index++) {
                        isSelected[index] = index == newIndex;
                      }
                    });
                  },
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                child: isSelected[0]
                    ? Center(child: Text('Showing Upcoming Tickets' , style: TextStyle(color: Colors.black),))
                    : isSelected[1]
                    ? Center(child: Text('Showing Completed Tickets', style: TextStyle(color: Colors.black),))
                    : Center(child: Text('Showing Cancelled Tickets', style: TextStyle(color: Colors.black),)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
