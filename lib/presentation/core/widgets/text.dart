import 'package:flutter/material.dart';

class GreyTextJustify extends StatelessWidget {
  final String text;
  const GreyTextJustify(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.grey),
      textAlign: TextAlign.justify,
    );
  }
}

class ColoredText extends StatelessWidget {
  final String text;
  final Color color;
  const ColoredText({Key? key, required this.text, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color),
    );
  }
}

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }
}

class TextTile extends StatelessWidget {
  final String title;
  final String body;

  const TextTile({Key? key, required this.title, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: HeaderText(title),
      subtitle: ColoredText(
        text: body,
        color: Colors.black,
      ),
      contentPadding: const EdgeInsets.all(0),
      minLeadingWidth: 0,
      minVerticalPadding: 0,
    );
  }
}
