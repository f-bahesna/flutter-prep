import 'package:flutter/material.dart';
import 'package:flutter_get_x/widgets/add_asset_dialog.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
    );
  }

  PreferredSizeWidget _appBar(BuildContext context) {
    return AppBar(
      title: const CircleAvatar(
        backgroundImage: NetworkImage(
          "https://i.pravatar.cc/150?img=3",
        ),
      ),
      actions: [
        IconButton(
          onPressed: () {
            Get.dialog(
              AddAssetDialog(),
            );
          },
          icon: Icon(
            Icons.add,
          ),
        ),
      ],
    );
  }
}
