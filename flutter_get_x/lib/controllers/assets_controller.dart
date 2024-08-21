import 'package:flutter_get_x/models/tracked_asset.dart';
import 'package:get/get.dart';

class AssetsController extends GetxController {
  RxList<TrackedAsset> trackedAssets = <TrackedAsset>[].obs;

  @override
  void onInit() {
    super.onInit();
    print(trackedAssets);
  }

  void addTrackedAsset(String name, double amount) {
    trackedAssets.add(
      TrackedAsset(
        name: name,
        amount: amount,
      ),
    );
  }
}
