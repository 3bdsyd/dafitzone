import 'package:dafitzone/core/constants/app_package.dart';

class CustomHandlingView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget basicWidget;
  final Widget loadingWidget;
  final Widget offlineWidget;
  final Widget errorWidget;
  final Widget? serverException;

  const CustomHandlingView({
    super.key,
    required this.statusRequest,
    required this.basicWidget,
    required this.loadingWidget,
    required this.offlineWidget,
    required this.errorWidget,
    this.serverException,
  });

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? loadingWidget
        : statusRequest == StatusRequest.offline
            ? offlineWidget
            : statusRequest == StatusRequest.exception
                ? errorWidget
                : statusRequest == StatusRequest.failure
                    ? errorWidget
                    : basicWidget;
  }
}
