import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:mpc_sport/components/appbutton.dart';
import 'package:mpc_sport/components/apptext.dart';
import 'package:mpc_sport/components/space.dart';
import 'package:mpc_sport/components/textfields.dart';
import 'package:mpc_sport/theme/colors.dart';

import '../../../../constants/images.dart';
import '../../../routes/app_pages.dart';
import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({super.key});
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
                height: 200,
              ),
              vSpace(10),
              BigAppText('🎉 Welcome Back!!! 🤗 '),
              vSpace(25),
              const AppTextFormField(
                hint: 'Enter Email',
                label: 'Email',
              ),
              vSpace(10),
              const AppTextFormField(
                hint: 'Enter Password',
                label: 'Password',
              ),
              vSpace(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.FORGOTPASSWORD);
                    },
                    child: MedAppText(
                      'Forgot Password?',
                      color: AppColors.primary,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              vSpace(20),
              AppElevatedButton(
                title: 'Sign In',
                onTap: () {
                  Get.toNamed(Routes.SIGNUP);
                },
              ),
              vSpace(125),
              // bottom
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MedAppText(
                    'Dont have an account?',
                    fontSize: 18,
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.SIGNUP);
                    },
                    child: MedAppText(' Register',
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

//it keep saying bottom overflowed by 90 pixels
