import 'package:flutter/material.dart';
import '../theme/colors.dart';
import 'apptext.dart';
import 'space.dart';

class LeaguesWidget extends StatelessWidget {
  const LeaguesWidget({
    super.key,
    required this.image,
    //required this.onTap,
  });

  final String image;
  // final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onTap(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 75,
            height: 75,
            decoration: BoxDecoration(
              // boxShadow: const [
              //   BoxShadow(
              //     color: AppColors.grey,
              //     offset: Offset(
              //       0.1,
              //       1.0,
              //     ),
              //   ),
              // ],
              border: Border.all(color: AppColors.black),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit
                      .cover), //fit: BoxFit.cover, width: double.infinity,
            ),
          ),
        ],
      ),
    );
  }
}
