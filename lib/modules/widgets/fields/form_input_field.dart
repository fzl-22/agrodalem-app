import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class FormInputField extends StatelessWidget {
  final TextEditingController controller;
  final IconData iconData;
  final String hintText;
  final bool isPassword;

  const FormInputField({
    super.key,
    required this.controller,
    required this.iconData,
    required this.hintText,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword ? true : false,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none),
        contentPadding: const EdgeInsets.all(16),
        filled: true,
        fillColor:
            Theme.of(context).colorScheme.inversePrimary.withOpacity(0.3),
        prefixIcon: Icon(
          iconData,
          size: 20,
        ),
        prefixIconColor: Theme.of(context).colorScheme.primary,
        suffixIcon: isPassword
            ? const Icon(
                IconlyBold.show,
                size: 20,
              )
            : null,
        suffixIconColor: Theme.of(context).colorScheme.primary,
        hintText: hintText,
        hintStyle: TextStyle(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
