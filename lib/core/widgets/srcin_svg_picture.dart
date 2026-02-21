import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SrcinSvgPicture extends StatelessWidget {
  const SrcinSvgPicture({
    super.key,
    required this.path,
    this.color,
    this.height,
    this.width,
  });
  final String path;
  final Color? color;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter: color != null
          ? ColorFilter.mode(color!, BlendMode.srcIn)
          : null,
      width: width,
      height: height,
    );
  }
}
