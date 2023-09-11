import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../generated/l10n.dart';

class FormatedDate extends StatelessWidget {
  final String label;
  final Color? labelColor;
  final DateTime date;
  final String? format;
  const FormatedDate({
    Key? key,
    required this.label,
    required this.date,
    this.format,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat(format ?? S.of(context).shortDateFormat);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            color: labelColor ?? Colors.grey,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.justify,
        ),
        Text(
          dateFormat.format(date),
          textAlign: TextAlign.justify,
        ),
      ],
    );
  }
}
