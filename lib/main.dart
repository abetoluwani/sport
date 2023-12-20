import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:mpc_sport/theme/colors.dart';
import 'app/modules/splashscreen/bindings/splashscreen_binding.dart';
import 'app/routes/app_pages.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      builder: (context, _) {
        return GetMaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
              backgroundColor: AppColors.white,
            ),
          ),
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
          initialBinding: SplashscreenBinding(),
          initialRoute: '/splashscreen',
        );
      },
    );
  }
}
