import 'package:flutter/material.dart';

class GenericTextField extends StatefulWidget {
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
  State<GenericTextField> createState() => _GenericTextFieldState();
}

class _GenericTextFieldState extends State<GenericTextField> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      validator: widget.validator,
      cursorHeight: 28,
      keyboardType: widget.keyboardType,
      obscureText: widget.isObsecure && !isVisible,
      cursorColor: Theme.of(context).colorScheme.secondary,
      decoration: InputDecoration(
        hintText: widget.hint,
        suffixIcon: widget.isObsecure
            ? GestureDetector(
                onTap: () {
                  setState(() {
                    isVisible = !isVisible;
                  });
                },
                child: Icon(
                  isVisible ? Icons.visibility : Icons.visibility_off,
                  color: Colors.black,
                ),
              )
            : null,
      ),
    );
  }
}
