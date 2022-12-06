import 'package:cli_test_project/app/modules/home/providers/home_model_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with StateMixin<List<dynamic>> {
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    HomeModelProvider().getUser().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (err) {
      change(null, status: RxStatus.error(err.toString()));
    });
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
