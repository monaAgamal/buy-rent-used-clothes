import 'package:buy_rent_used_clothes/core/widgets/loading_indicator.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final bool isOutlined;
  final String label;
  final bool isLoading;
  final Function()? onTap;
  const MainButton({
    Key? key,
    required this.label,
    required this.isOutlined,
    this.isLoading = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
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
                    fontSize: 24,
                    color: isOutlined
                        ? Theme.of(context).colorScheme.onSurface
                        : Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
      ),
    );
  }
}
