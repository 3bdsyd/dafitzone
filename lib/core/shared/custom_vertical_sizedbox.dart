import 'package:dafitzone/core/constants/app_package.dart';

class CustomVertical extends StatelessWidget {
  final double height;
  const CustomVertical({
    super.key,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height.h);
  }
}
