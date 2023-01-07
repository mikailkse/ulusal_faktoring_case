import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ulusal_faktoring_case/core/constants/image/image_constants.dart';

class SvgIcon extends SvgPicture {
  SvgIcon({
    super.key,
    String? icon,
    Color? color,
    double? width,
    double? height,
  }) : super.asset(
          icon?.toSVG ?? '',
          color: color,
          width: width,
          height: height,
          fit: BoxFit.cover,
        );
}
