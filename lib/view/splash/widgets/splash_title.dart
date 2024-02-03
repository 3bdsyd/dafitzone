import 'package:dafitzone/core/constants/app_package.dart';

class SplashTitleWidget extends StatelessWidget {
  const SplashTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Text(
            'Dafitzone',
            style: context.textTheme.titleLarge!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
