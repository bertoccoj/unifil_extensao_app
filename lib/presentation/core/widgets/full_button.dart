import 'package:flutter/material.dart';

class FullButton extends StatelessWidget {
  final String label;
  final Color? color;
  final void Function()? onPressed;
  final EdgeInsets? padding;
  const FullButton({
    Key? key,
    this.padding,
    this.onPressed,
    required this.label,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(50),
          side: BorderSide(
            color: color ?? Theme.of(context).colorScheme.primary,
          ),
        ),
        child: Text(label),
      ),
    );
  }
}
