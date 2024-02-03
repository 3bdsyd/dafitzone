import 'dart:convert';
import 'package:dafitzone/core/constants/app_package.dart';
import 'package:http/http.dart' as http;

class Crud {
  //A function through which data can be get
  Future<Either<StatusRequest, Map>> get(
    final String linkUrl,
  ) async {
    try {

      //Test the presence of an Internet connection
      if (await checkInternet()) {
        var response = await http.get(
          Uri.parse(linkUrl),
        );
        print(linkUrl);

        //Test the status of the API connection
        if (response.statusCode == 200) {
          final Map responseBody = await jsonDecode(response.body);

          //Test if the operation was completed successfully
          if (responseBody.containsKey('message')) {
            final String message = responseBody['message'];
            customSnackBar(title: 'notice', message: message);
          }
          if (responseBody.containsKey('status')) {
            if (!responseBody['status']) {
              return const Left(StatusRequest.failure);
            }
          }
          return Right(responseBody);
        }
      } else {
        customSnackBar(title: 'فشل', message: 'لا يوجد اتصال بالانترنت');
        return const Left(StatusRequest.offline);
      }
      return const Left(StatusRequest.failure);
    } catch (_) {
      customSnackBar(title: 'فشل', message: 'حدث خطأ ما');
      return const Left(StatusRequest.failure);
    }
  }
}
