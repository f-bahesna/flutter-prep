import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String label;

  const CustomFormField({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(
          color: Colors.black38,
        ),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
