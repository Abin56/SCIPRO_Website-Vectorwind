// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MyHoverText extends StatefulWidget {
  final String text;
  final Color defaultColor;
  final Color hoverColor;

  const MyHoverText({
    required this.text,
    required this.defaultColor,
    required this.hoverColor,
  });

  @override
  _MyHoverTextState createState() => _MyHoverTextState();
}

class _MyHoverTextState extends State<MyHoverText> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => onHover(true),
      onExit: (_) => onHover(false),
      child: Text(
        widget.text,
        style: TextStyle(
          color: isHovered ? widget.hoverColor : widget.defaultColor,
          fontSize: 20.0,
        ),
      ),
    );
  }

  void onHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }
}
