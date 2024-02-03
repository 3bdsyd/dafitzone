import 'package:dafitzone/core/constants/app_package.dart';

class ProfileRatioSection extends StatelessWidget {
  final String type;
  final String value;
  const ProfileRatioSection({
    super.key,
    required this.type,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            value,
            style: context.textTheme.bodyLarge!.copyWith(
              color: AppColor.orangeColor,
            ),
          ),
          Text(
            type,
            style: context.textTheme.bodyLarge,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ).animate().fade().slideY(begin: 1),
    );
  }
}
