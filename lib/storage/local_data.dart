import 'package:get_storage/get_storage.dart';

class LocalData {
  final box = GetStorage();
  final String UserData = "UserData";
  getThemeData() async {
    return await box.read(UserData) ?? false;
  }

  setThemeData(bool value) async {
    await box.write(UserData, value);
    return true;
  }
}
