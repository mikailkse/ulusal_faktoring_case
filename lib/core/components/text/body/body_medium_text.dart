import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../theme/theme.dart';

class BodyMediumText extends AutoSizeText {
  BodyMediumText({
    Key? key,
    required String text,
    required Color color,
    int? maxLines,
    TextAlign? textAlign,
    TextOverflow? overflow,
  }) : super(
          key: key,
          text,
          overflow: overflow,
          textScaleFactor: 1,
          textAlign: textAlign,
          maxLines: maxLines,
          style: light.textTheme.bodyText2!.copyWith(
            color: color,
            fontWeight: light.textTheme.bodyText2!.fontWeight,
            fontFamily: light.textTheme.bodyText2!.fontFamily,
            fontSize: light.textTheme.bodyText2!.fontSize,
            fontStyle: light.textTheme.bodyText2!.fontStyle,
          ),
        );
}
