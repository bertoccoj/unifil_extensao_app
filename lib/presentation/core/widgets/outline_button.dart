import 'package:flutter/material.dart';

class OutlineButton extends StatelessWidget {
  final String label;
  final Color? color;
  final void Function() onPressed;
  final EdgeInsets? padding;
  const OutlineButton({
    Key? key,
    this.padding,
    required this.onPressed,
    required this.label,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(0),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
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
