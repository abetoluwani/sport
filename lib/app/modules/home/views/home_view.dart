import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:mpc_sport/components/apptext.dart';
import 'package:mpc_sport/components/leagues.dart';
import 'package:mpc_sport/components/livenow.dart';
import 'package:mpc_sport/components/space.dart';
import 'package:mpc_sport/constants/images.dart';
import 'package:mpc_sport/theme/colors.dart';

import '../../../../components/featurenews.dart';
import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // leagues
                  Container(
                    padding: simPad(10, 10),
                    child: BigAppText(
                      'Popular Leagues',
                    ),
                  ),
                  vSpace(10),
                  // list of leagues
                  Container(
                    padding: simPad(0, 10),
                    height: 75.h,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 10.w,
                        children: const [
                          LeaguesWidget(
                            image: AppImages.premierleague,
                          ),
                          LeaguesWidget(
                            image: AppImages.erdivise,
                          ),
                          LeaguesWidget(
                            image: AppImages.laliga,
                          ),
                          LeaguesWidget(
                            image: AppImages.ligue1,
                          ),
                          LeaguesWidget(
                            image: AppImages.seriea,
                          ),
                          LeaguesWidget(
                            image: AppImages.bundesliga,
                          ),
                          LeaguesWidget(
                            image: AppImages.ucl,
                          ),
                          LeaguesWidget(
                            image: AppImages.uel,
                          ),
                          LeaguesWidget(
                            image: AppImages.conference,
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Live Now
                  Container(
                    padding: simPad(10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BigAppText(
                          'Live Now',
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.toNamed(Routes.MATCHES);
                          },
                          child: Row(
                            children: [
                              MedAppText(
                                'See All',
                                fontSize: 20,
                                color: AppColors.primary,
                              ),
                              hSpace(5),
                              const Icon(
                                Icons.chevron_right,
                                color: AppColors.primary,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  // live now container
                  Container(
                    padding: simPad(0, 10),
                    height: 130.h,
                    width: double.infinity,
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        spacing: 10.w,
                        children: const [
                          LiveNow(
                            time: '85',
                            image: AppImages.premierleague,
                            club1: AppImages.arsenal,
                            club1name: 'Arsenal',
                            club1score: '1',
                            club2: AppImages.mancity,
                            club2name: 'Man City',
                            club2score: '4',
                          ),
                          LiveNow(
                            time: '90',
                            image: AppImages.laliga,
                            club1: AppImages.barca,
                            club1name: 'Barcelona',
                            club1score: '5',
                            club2: AppImages.realmadrid,
                            club2name: 'Real Madrid',
                            club2score: '2',
                          ),
                          LiveNow(
                            time: '75',
                            image: AppImages.premierleague,
                            club1: AppImages.astonvilla,
                            club1name: 'Aston Villa',
                            club1score: '1',
                            club2: AppImages.sevilla,
                            club2name: 'Sevilla',
                            club2score: '4',
                          ),
                        ],
                      ),
                    ),
                  ),

                  //Featured News

                  Container(
                    padding: simPad(10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BigAppText(
                          'Featured News',
                        ),
                        vSpace(10),
                        const FeaturedNews(
                          image: AppImages.news,
                          title:
                              'PSG with world classs talent in their squad with the likes of Mbappe, Messi and Neymar ',
                          category: 'Premier League',
                        ),
                        vSpace(15),
                        const FeaturedNews(
                          image: AppImages.news,
                          title:
                              'PSG with world classs talent in their squad with the likes of Mbappe, Messi and Neymar ',
                          category: 'Premier League',
                        ),
                        vSpace(15),
                        const FeaturedNews(
                          image: AppImages.news,
                          title:
                              'PSG with world classs talent in their squad with the likes of Mbappe, Messi and Neymar ',
                          category: 'Premier League',
                        ),
                        vSpace(15),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
