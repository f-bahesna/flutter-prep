import 'package:flutter/material.dart';

class DialogCustom extends StatelessWidget {
  final String message;

  const DialogCustom({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Google Pressed'),
      content: Text('This is a content dialog.'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text('OK'),
        ),
      ],
    );
  }
}
