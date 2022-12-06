import 'package:get/get.dart';

import '../dummy_model.dart';

class DummyProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Dummy.fromJson(map);
      if (map is List) return map.map((item) => Dummy.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Dummy?> getDummy(int id) async {
    final response = await get('dummy/$id');
    return response.body;
  }

  Future<Response<Dummy>> postDummy(Dummy dummy) async =>
      await post('dummy', dummy);
  Future<Response> deleteDummy(int id) async => await delete('dummy/$id');
}
