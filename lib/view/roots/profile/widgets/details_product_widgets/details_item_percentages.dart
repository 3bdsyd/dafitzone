import 'package:dafitzone/core/constants/app_package.dart';

class DetailsItemPercentagesWidget extends StatelessWidget {
  final String type;
  final String amount;
  final String percent;
  const DetailsItemPercentagesWidget({
    super.key,
    required this.type,
    required this.amount,
    required this.percent,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            type,
            style: context.textTheme.bodyLarge,
          ),
          Row(
            children: [
              Text(
                amount,
                style: context.textTheme.bodyMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const CustomHorizontal(width: 6),
              Text(
                percent,
                style: context.textTheme.bodyMedium!.copyWith(
                  color: AppColor.grayColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
