import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mpc_sport/components/apptext.dart';
import 'package:mpc_sport/components/dot.dart';
import 'package:mpc_sport/components/onboard.dart';
import 'package:mpc_sport/components/space.dart';
import 'package:mpc_sport/theme/colors.dart';
import '../../../../components/onboarding.dart';
import '../../../routes/app_pages.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  //final OnboardingController controller = Get.put(OnboardingController());
  PageController pageController = PageController();
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  void navigateToNextPage() {
    if (pageIndex < demodata.length - 1) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.ease,
      );
    } else {
      // Navigate to a different page when "Continue" is tapped on the last onboarding page
      Get.offNamed(
          Routes.SIGNIN); // Replace '/your_next_page' with the actual route
    }
  }

  void skipOnboarding() {
    // Navigate to a different page when "Skip" is tapped
    Get.toNamed(
        Routes.SIGNIN); // Replace '/your_other_page' with the actual route
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 5,
              child: PageView.builder(
                controller: pageController,
                itemCount: demodata.length,
                onPageChanged: (index) {
                  setState(() {
                    pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => Onboarding(
                  image: demodata[index].image,
                  title: demodata[index].title,
                  description: demodata[index].description,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: simPad(10, 25),
                child: Row(
                  children: [
                    ...List.generate(
                      demodata.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: DotIndicator(
                          isActive: index == pageIndex,
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 40,
                      width: 90,
                      child: ElevatedButton(
                        onPressed: () {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.ease,
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          backgroundColor: AppColors.primary,
                        ),
                        child: const Icon(
                          Icons.chevron_right,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: skipOnboarding,
                      child: MedAppText(pageIndex == demodata.length - 1
                          ? 'Continue'
                          : 'Skip'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}



// convert the above code into a stateless widget

