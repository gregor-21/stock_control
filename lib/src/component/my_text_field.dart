// ignore_for_file: body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

class MyTextField extends StatefulWidget {
  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;
  const MyTextField(
      {super.key,
      required this.fieldName,
      required this.myController,
      required this.myIcon,
      required this.prefixIconColor});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: TextFormField(
        validator: (value) {
          if ((value == null || value.isEmpty) &&
              widget.fieldName != "Complemento") {
            return 'validacao-texto'.i18n();
          } else {
            return null;
          }
        },
        controller: widget.myController,
        decoration: InputDecoration(
          labelText: widget.fieldName,
          prefixIcon: Icon(widget.myIcon, color: widget.prefixIconColor),
          border: const OutlineInputBorder(),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue),
          ),
          labelStyle: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
