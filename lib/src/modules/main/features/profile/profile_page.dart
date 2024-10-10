import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/cruft_button.dart';
import '../edit_profile.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    void navigateToEditPfp() {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) =>  EditProfilePage(),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            const SliverAppBar(
              centerTitle: true,
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 40.h),
                  ),
                  Container(
                    height: 70.h,
                    width: 70.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey,
                    ),
                  ),
                  const Text(
                    "Tanya Hill",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: CruftButton(
                            text: 'Edit Profile',
                            onPressed: navigateToEditPfp,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'About',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        const Text(
                          "We have a team but still missing a couple of people. Let's play together! "
                          "We have a team but still missing a couple of people. We have a team but still missing a couple of people.",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            height: 1.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
