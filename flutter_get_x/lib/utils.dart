import 'package:flutter_get_x/controllers/assets_controller.dart';
import 'package:flutter_get_x/services/http_service.dart';
import 'package:get/get.dart';

Future<void> registerServices() async {
  Get.put(
    HTTPService(),
  );
}

Future<void> registerControllers() async {
  Get.put(
    AssetsController(),
  );
}
