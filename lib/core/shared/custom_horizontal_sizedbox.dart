import 'package:dafitzone/core/constants/app_package.dart';

class CustomHorizontal extends StatelessWidget {
  final double width;
  const CustomHorizontal({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width.w);
  }
}
