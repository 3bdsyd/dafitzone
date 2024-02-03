import 'package:dafitzone/core/constants/app_color.dart';
import 'package:dafitzone/core/constants/app_image.dart';
import 'package:flutter/material.dart';

class SplashLogoWidget extends StatelessWidget {
  final double opacity;
  final bool value;
  final Animation<double>? scaleAnimation;
  const SplashLogoWidget({
    super.key,
    required this.opacity,
    required this.value,
    required this.scaleAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedOpacity(
        curve: Curves.fastLinearToSlowEaseIn,
        duration: const Duration(seconds: 6),
        opacity: opacity,
        child: AnimatedContainer(
          curve: Curves.fastLinearToSlowEaseIn,
          duration: const Duration(seconds: 2),
          height: value ? 50 : 200,
          width: value ? 50 : 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColor.orangeColor.withOpacity(.2),
                blurRadius: 100,
                spreadRadius: 10,
              ),
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage(AppImage.logo),
                ),
              ),
              child: AnimatedBuilder(
                animation: scaleAnimation!,
                builder: (c, child) => Transform.scale(
                  scale: scaleAnimation?.value,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          AppColor.whiteColor,
                          AppColor.whiteColor,
                          AppColor.orangeColor,
                          AppColor.orangeColor,
                          AppColor.whiteColor,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
