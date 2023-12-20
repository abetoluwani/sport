import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../components/appbutton.dart';
import '../../../../components/apptext.dart';
import '../../../../components/space.dart';
import '../../../../components/textfields.dart';
import '../../../../constants/images.dart';
import '../../../../theme/colors.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: simPad(20, 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImages.logo,
                height: 150,
              ),
              vSpace(20),
              BigAppText('🚀 Get Started! 🌟 🏀⚽🏈'),
              vSpace(15),
              const AppTextFormField(
                hint: 'FullName',
                label: 'Name',
              ),
              vSpace(10),
              const AppTextFormField(
                hint: 'Enter Email',
                label: 'Email',
              ),
              vSpace(10),
              const AppTextFormField(
                hint: 'Enter Password',
                label: 'Password',
              ),
              vSpace(10),
              const AppTextFormField(
                hint: 'Confirm Password',
                label: 'Confirm Password',
              ),
              vSpace(20),
              AppElevatedButton(
                title: 'Sign In',
                onTap: () {
                  Get.toNamed(Routes.SIGNUP);
                },
              ),
              vSpace(50),
              // bottom
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MedAppText(
                    'Alreadyhave an account?',
                    fontSize: 18,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.SIGNIN);
                    },
                    child: MedAppText(' Login',
                        color: AppColors.primary, fontSize: 20),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
