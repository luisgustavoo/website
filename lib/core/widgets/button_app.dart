import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonApp extends StatelessWidget {
  const ButtonApp({
    required this.label,
    required this.icon,
    this.onPressed,
    this.width,
    this.height = 30,
    super.key,
  });

  final String label;
  final VoidCallback? onPressed;
  final double? width;
  final double height;
  final SvgPicture icon;
  static const double _minimumWidthSize = 64;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: icon,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width ?? _minimumWidthSize, height),
        foregroundColor: Colors.white,
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
          side: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      onPressed: onPressed,
      label: Text(label),
    );
  }
}
