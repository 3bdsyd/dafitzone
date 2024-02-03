import 'package:dafitzone/core/constants/app_package.dart';

class RootBottomNavBarWidget extends GetView<RootControllerImp> {
  const RootBottomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h, left: 15.w, right: 12.w),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: GetBuilder<RootControllerImp>(
          builder: (_) => BottomNavigationBar(
            iconSize: 26,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: AppColor.darkColor,
            unselectedItemColor: AppColor.whiteColor,
            selectedItemColor: AppColor.orangeColor,
            currentIndex: controller.selectedActivePage,
            onTap: (value) => controller.selectPage(value),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.assignment_rounded),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.local_grocery_store_outlined),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
