import 'package:dafitzone/core/constants/app_package.dart';

AppBar rootAppBarWidget() => AppBar(
      scrolledUnderElevation: 0,
      title: Text(
        'احصائياتي',
        style: Get.context!.textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: const Directionality(
            textDirection: TextDirection.ltr,
            child: Icon(
              Icons.arrow_back_outlined,
              size: 30,
            ),
          ),
        ),
      ],
    );
