import 'package:dafitzone/core/constants/app_package.dart';

class ProfileData {
  Crud crud;
  ProfileData(this.crud);
  getData([final String? query]) async {
    var response = await crud.get('${AppLink.dietProgramsUrl}?$query');

    return response.fold((l) => l, (r) => r);
  }
}
