import 'package:buy_rent_used_clothes/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final bool isOutlined;
  final String label;
  final bool isLoading;
  const MainButton({
    Key? key,
    required this.label,
    this.isOutlined = true,
    this.isLoading = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 5.0,
          ),
        ],
        border: Border.all(
            width: 1.5,
            color: isOutlined
                ? Theme.of(context).colorScheme.onSurface
                : Theme.of(context).colorScheme.primary),
        borderRadius: BorderRadius.circular(12),
        color: isOutlined
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.secondary,
      ),
      child: isLoading
          ? const Center(child: LoadingIndictor())
          : Center(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 18,
                  color: isOutlined
                      ? Theme.of(context).colorScheme.onSurface
                      : Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
    );
  }
}
