import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:mpc_sport/components/apptext.dart';
import 'package:mpc_sport/components/leagues.dart';
import 'package:mpc_sport/components/space.dart';
import 'package:mpc_sport/constants/images.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: simPad(10, 25),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.menu,
                        size: 25.h,
                      ),
                    ),
                    Row(
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
                          onTap: () {},
                          child: Icon(
                            Icons.notifications,
                            size: 25.h,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                // leagues
                vSpace(20),
                MedAppText(
                  'Leagues',
                  fontWeight: FontWeight.bold,
                ),
                vSpace(16),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const LeaguesWidget(
                        image: AppImages.logo,
                      ),
                      hSpace(10),
                      const LeaguesWidget(
                        image: AppImages.logo,
                      ),
                      hSpace(10),
                      const LeaguesWidget(
                        image: AppImages.logo,
                      ),
                      hSpace(10),
                      const LeaguesWidget(
                        image: AppImages.logo,
                      ),
                      hSpace(10),
                      const LeaguesWidget(
                        image: AppImages.logo,
                      ),
                      hSpace(10),
                    ],
                  ),
                ),

                //
                MedAppText('www'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
