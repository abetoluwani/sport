import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../components/space.dart';
import '../../../../theme/colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/matches_controller.dart';

class MatchesView extends GetView<MatchesController> {
  const MatchesView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // make the menu search and notification
          backgroundColor: AppColors.white,
          // make the menu
          leading: GestureDetector(
              onTap: () {},
              child: const Icon(
                Icons.menu,
              )),
          // make the search and notification
          actions: [
            Container(
              padding: simPad(10, 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      Icons.search_rounded,
                      size: 25.h,
                    ),
                  ),
                  hSpace(20),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.NOTIFICATIONS);
                    },
                    child: Icon(
                      Icons.notifications,
                      size: 25.h,
                    ),
                  ),
                ],
              ),
            ),
          ],
          // remove the elevation
          elevation: 0,
        ),
      body: const Center(
        child: Text(
          'MatchesView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
