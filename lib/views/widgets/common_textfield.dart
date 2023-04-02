import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CommonTextField extends StatelessWidget {
  CommonTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    required this.onChanged,
    required this.validator,
    this.isObscure = false,
    this.isPrefixIcon = false,
  }) : super(key: key);
  final String hintText;
  final TextEditingController controller;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  bool isObscure;
  bool isPrefixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      obscureText: isObscure,
      onChanged: onChanged,
      decoration: InputDecoration(
          prefixIcon:
              isPrefixIcon ? const Icon(Icons.search) : const SizedBox(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          hintText: hintText),
    );
  }
}
