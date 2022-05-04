import 'package:flutter/material.dart';

class GenericTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final bool isObsecure; 
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  const GenericTextField({
    Key? key,
    this.controller,
    this.onChanged,
    this.isObsecure = false, 
    this.validator,
    required this.hint,
    this.keyboardType = TextInputType.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      validator: validator,
      cursorHeight: 28,
      keyboardType: keyboardType,
      obscureText: isObsecure, 
      cursorColor: Theme.of(context).colorScheme.secondary,
      decoration: InputDecoration(
        hintText: hint,
      
      ),
    );
  }
}
