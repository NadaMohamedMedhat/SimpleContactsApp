import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  IconData suffixIcon;
  String hintText;
  TextInputType type;
  TextEditingController controller;

  CustomTextFormField({
    super.key,
    required this.suffixIcon,
    required this.hintText,
    required this.type,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextFormField(
        controller: controller,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
        ),
        cursorColor: Colors.black,
        keyboardType: type,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white),
          ),
          suffixIcon: Icon(
            suffixIcon,
            color: Colors.blueAccent,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
