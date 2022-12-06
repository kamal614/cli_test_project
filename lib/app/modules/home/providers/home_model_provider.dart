import 'package:get/get.dart';

import '../home_model_model.dart';

class HomeModelProvider extends GetConnect {
  Future<List<dynamic>> getUser() async {
    final response = await get("https://randomuser.me/api/?result=10");
    if (response.status.hasError) {
      return Future.error(response.statusCode!);
    } else {
      return response.body['results'];
    }
  }
}
